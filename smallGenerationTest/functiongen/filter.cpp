#define SOPLEX_WITH_GMP
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <soplex.h>
#include <fstream>
#include <memory>
#include <random>

#include <x86intrin.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <errno.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>


#include "common.h"
#include "Filter_Utilities.h"

#include "Sample_Data.h"
#include "Utilities.h"

#define MAX_TRIES 100
#define VIOLATE_THRESHOLD 5
#define SAMPLE_MATCH_THRESHOLD 20

#ifdef EXIT_ON_THRESHOLD
const int RLIBM_EXIT_ON_THRESHOLD = 1;
#else
const int RLIBM_EXIT_ON_THRESHOLD = 0;
#endif

using namespace soplex;
using namespace std;

size_t prev_successful_degree = 0;

typedef struct{
  double key;
  size_t index;
} sample_info;

typedef struct {
  int termsize;
  int* power;
  double* coeffs;
} polynomial;

polynomial* rlibm_solve_with_soplex(sample_data* sintervals,
				    size_t ssize, int* power, int termsize){
  
  SoPlex mysoplex;
  mysoplex.setBoolParam(SoPlex::RATFACJUMP,true);
  mysoplex.setIntParam(SoPlex::SOLVEMODE,2);
  mysoplex.setIntParam(SoPlex::CHECKMODE,2);
  mysoplex.setIntParam(SoPlex::SYNCMODE,1);
  mysoplex.setIntParam(SoPlex::READMODE,1);
  mysoplex.setRealParam(SoPlex::FEASTOL,0.0);
  mysoplex.setRealParam(SoPlex::OPTTOL,0.0);
  mysoplex.setRealParam(SoPlex::EPSILON_ZERO,0.0);
  mysoplex.setRealParam(SoPlex::EPSILON_FACTORIZATION,0.0);
  mysoplex.setRealParam(SoPlex::EPSILON_UPDATE,0.0);
  mysoplex.setRealParam(SoPlex::EPSILON_PIVOT,0.0);
  mysoplex.setIntParam(SoPlex::VERBOSITY,0);
  mysoplex.setRealParam(SoPlex::TIMELIMIT,5*60);
  
  /* we first add objective variables */
  DSVectorRational dummycol(0);
  for(int i=0;i<termsize;i++){
    auto column=LPColRational(1.0,dummycol,infinity,-infinity);
    mysoplex.addColRational(column);
  }
  
  /* then add constraints one by one */
  for(int i = 0; i < ssize; i++){
    Rational xValR(sintervals[i].x);
    DSVectorRational row1(termsize);
    
    for(int j=0; j<termsize;j++){
      Rational toAdd(1.0);
      for(int k=0;k<power[j];k++) toAdd*=xValR;

      row1.add(j,toAdd);
    }
        
    // LPRow: low bound, row, upper bound
    double lbnd= sintervals[i].lb;
    double ubnd= sintervals[i].ub;
    mysoplex.addRowRational(LPRowRational(lbnd,row1,ubnd));
  }

  /* solve LP */
  SPxSolver::Status stat;
  stat=mysoplex.optimize();
  
  /* get solution */
  if(stat==SPxSolver::OPTIMAL){
    DVectorRational prim(termsize);
    mysoplex.getPrimalRational(prim);

    /* generate the polynomial as a plain structure */
    polynomial* p = (polynomial *) calloc(1, sizeof(polynomial));
    p->termsize = termsize;
    p->power = power;
    p->coeffs = (double *) calloc(termsize, sizeof(double));
    
    for(int i=0;i<termsize;i++)
      p->coeffs[i] = mpq_get_d(*(prim[i].getMpqPtr_w()));

    return p;
  }
  else if(stat==SPxSolver::UNBOUNDED){

    polynomial* p = (polynomial *) calloc(1, sizeof(polynomial));
    p->termsize = termsize;
    p->power = power;
    p->coeffs = (double *) calloc(termsize, sizeof(double));
    
    for(int i=0;i<termsize;i++)
      p->coeffs[i] = 0.0;
    
    return p;
  }
  
  return nullptr;
}

void check_sorted(sample_info* sampled_indices, size_t ssize){
  double min= sampled_indices[0].key;

  for(size_t i = 0; i< ssize; i++){
    assert ( min <= sampled_indices[i].key);
    min = sampled_indices[i].key;
  }
  
}


double rlibm_poly_evaluation(double x, polynomial* poly){

  double ret_val = 0.0;

  // simulated Horner's method
  for(int i = poly->termsize-1; i> 0; i--){
    ret_val = ret_val + poly->coeffs[i];
    double xmul = 1.0;
    for(int j = 0; j < (poly->power[i] - poly->power[i-1]); j++){
      xmul = xmul * x;
    }
    ret_val = ret_val * xmul;	  
  }
  ret_val = ret_val + poly->coeffs[0];
  
  for(int j = 0; j < poly->power[0]; j++){
    ret_val = ret_val * x;
  }  
  return ret_val;
}

bool rlibm_validate_and_fix_intervals(sample_data* sintervals,
				      size_t ssize, polynomial* poly){

  bool return_val = true;
  for(size_t i = 0; i < ssize; i++){
    double y = rlibm_poly_evaluation(sintervals[i].x, poly);

    if(y < sintervals[i].orig_lb){
      return_val = false;
      double_x lbx;
      lbx.d = sintervals[i].lb;
      if(lbx.d >= 0) {
	lbx.x = lbx.x + 1;
      }
      else{
	lbx.x = lbx.x - 1 ;
      }
      sintervals[i].lb = lbx.d;
    }
    else if(y > sintervals[i].orig_ub){
      return_val = false;
      double_x ubx;
      ubx.d = sintervals[i].ub;
      if(ubx.d >= 0){
	ubx.x = ubx.x - 1;
      }
      else {
	ubx.x = ubx.x + 1;
      }
      sintervals[i].ub = ubx.d;
    }    
  }
  return return_val;
}

// memory leak on the polynomial

polynomial*
rlibm_generate_polynomial(sample_data* sintervals, size_t ssize,
			  int* power, int power_size, int max_tries){

  for(int i = prev_successful_degree; i < power_size; i++){
    printf("Trying to generate a polynomial  with %d terms \n", i+1);

    int count = 0;
    while(count < max_tries){
      polynomial* p = rlibm_solve_with_soplex(sintervals, ssize, power, i+1);
      if(p && rlibm_validate_and_fix_intervals(sintervals, ssize, p)){
	prev_successful_degree = i;
	return p;
      }
      if(p != nullptr){
	free(p);
      }
      count++;
    }    
  }
  return nullptr;

}

int sample_compare(const void* s1, const void* s2){

  sample_info* e1 = (sample_info*) s1;
  sample_info* e2 = (sample_info*) s2;
  return e1->key > e2->key;
}

void rlibm_print_sample(sample_info* sampled_indices, size_t size){

  double prev = 0.0;
  for(size_t i = 0; i < size; i++){
    assert(sampled_indices[i].key >= prev);
    prev = sampled_indices[i].key;
    printf("counter=%lu, key=%e, sample_index=%lu\n", i, sampled_indices[i].key,
	   sampled_indices[i].index);
  }
}

void rlibm_weighted_random_sample(sample_info* sampled_indices, size_t ssize,
				  interval_data* intervals, size_t nentries){

  for(size_t i = 0; i < ssize; i++){
    sampled_indices[i].key = pow(intervals[i].u, 1./(intervals[i].w));
    sampled_indices[i].index = i;
  }
  
  qsort(sampled_indices, ssize, sizeof(sample_info), sample_compare);
  //  check_sorted (sampled_indices, ssize);

  /* select the top ssize indices from the entire interval data */
  
  for(size_t i = ssize; i < nentries; i++){

    /* if the ith element is smaller than the least element in the
       sample, then nothing to do */
    size_t j= 0;

    double interval_key = pow(intervals[i].u, 1./(intervals[i].w));
    
    if(interval_key > sampled_indices[0].key){
      /* do insertion sort of the data */
      while(interval_key > sampled_indices[j].key && j < ssize) j++;

      for(size_t t=1; t < j; t++) {
	sampled_indices[t-1] = sampled_indices[t];
      }
      sampled_indices[j-1].key = interval_key;
      sampled_indices[j-1].index = i;
    }
  }
  //  check_sorted(sampled_indices, ssize);
}


size_t rlibm_compute_violated_indices(size_t* violated_indices, interval_data* intervals, size_t nentries, polynomial* poly){

  size_t num_violated_indices = 0;
  for(size_t i = 0; i < nentries; i++){
    double y = rlibm_poly_evaluation(intervals[i].x, poly);
    if( y < intervals[i].lb || y > intervals[i].ub){
      violated_indices[num_violated_indices] = i;
      num_violated_indices++;
    }
  }
  return num_violated_indices;
}

void rlibm_evaluate_and_update_weights(size_t* violated_indices, size_t num_violated_indices,
				       interval_data* intervals, size_t nentries, size_t d){
  double w_v = 0.0;
  double w_s = 0.0;

  // this can be optimized to only change the updated weights. For now
  // using an inefficient one
  for (size_t i = 0; i < nentries; i++){
    w_s = w_s + intervals[i].w;
  }

  for(size_t i = 0; i < num_violated_indices; i++){
    w_v = w_v + intervals[violated_indices[i]].w;
  }

  //doubling the weights for a lucky iteration
  if(w_v <= 2 * w_s / (9*d -1)){
    for(size_t i = 0; i < num_violated_indices; i++){
      size_t vindex = violated_indices[i];
      intervals[vindex].w  = intervals[vindex].w * 2;
    }
  }  
}

void
rlibm_regenerate_random_values_and_reset_weights(interval_data* intervals,
						 size_t nentries){

  std::random_device rd;
  std::mt19937 generator(rd());
  std::uniform_real_distribution<double> distribution(0.0, 1.0);

  for(size_t i = 0; i < nentries; i++){
    intervals[i].u = distribution(generator);
    intervals[i].w = 1.0;
  }
}

bool check_sampled_indices(sample_info* sample, sample_info* prev_sample, size_t size){

  for(size_t i =0; i < size; i++){
    if (sample[i].index != prev_sample[i].index){
      return false;
    }
  }
  return true;
}

void rlibm_print_polyinfo(polynomial* p){

  if(p->termsize == 0){
    printf("Polynomial has no terms!\n");
    exit(0);
  }

  printf("Polynomial: y=%.70e x^(%d)",p->coeffs[0],p->power[0]);
  for(int j=1;j<p->termsize;j++){
    printf(" + %.70e x^(%d)",p->coeffs[j],p->power[j]);
  }
  printf("\n");

}

int main(int argc,char** argv)
{
    if(argc < 2){
        printf("Usage: %s <interval file>\n",argv[0]);
        return 1;
    }

    /* count the number of entries */
    unsigned long nentries = Utilities::Number_Of_Intervals(argc,argv);
    printf("total number of intervals = %lu\n", nentries);

    /* allocate memory for intervals */
    interval_data* intervals = (interval_data*) calloc(nentries, sizeof(interval_data));

    /* read intervals from file */
    Utilities::Read_Intervals_From_Files(argc,argv,intervals);

    unsigned long violated_inputs[] = {0x3ea8000000000000,0x3ec4000000000000,0x3ecc000000000000,0x3f5b1e36942462c2,0x3f5ca10842108421,
                                       0x3f5e962465ea2941,0x3f657497b425ed09,0x3f6e5c9c9c9c9c9c,0x3f6e8a1fd1b7af01,0x3f740970e4f80cb8,
                                       0x3f769171c71c71c7,0x3f787dee95c4ca03,0x3f78eee000000000,0x3f79ce3f8868a470,0x3f79ce4000000000,
                                       0x3f7a486d6f63aa04,0x3f7ef7e000000000,0x3f7f97515d457516,0x3f7f9fc000000000};
    size_t violated_input_size=19;

    binary_fuse16_t *filter = new binary_fuse16_t;
#if 0
    binary_fuse16_allocate(violated_input_size,filter);

    /* construct the filter */
    if(!binary_fuse16_populate(violated_inputs, violated_input_size, filter)){ 
        printf("failure to populate\n");return 1;}

    Filter_Utilities::Save(filter,"Log_binary_fuse.filter");
#else
    unsigned int dummy;
    unsigned long temp_rdtscp1 = __rdtscp(&dummy);
    Filter_Utilities::Load(filter,"Log_binary_fuse.filter");
    unsigned long temp_rdtscp2 = __rdtscp(&dummy);
    printf("cycles to load filter = %d\n", temp_rdtscp2 - temp_rdtscp1);
#endif

    /* count total matches with filter */
    size_t total_matches=0;
    int fflag = 0;
    for(unsigned long i=0;i<nentries;++i){
        double_x df;
        df.d = intervals[i].x;
	
	if (fflag == 0){
	  temp_rdtscp1 = __rdtscp(&dummy);	
	  bool temp = binary_fuse16_contain(df.x,filter);
	  unsigned long temp_rdtscp2 = __rdtscp(&dummy);
	  printf("cycles to check the filter = %d, bool = %d\n", temp_rdtscp2 - temp_rdtscp1, temp);
	  fflag = 1;
	}

        if(binary_fuse16_contain(df.x,filter)) ++total_matches;
    }

    printf("Total Matches: %lu\n",total_matches);

    int powers[]={0,1,2,3,4,5,6,7,8,9};
    int powers_size = sizeof(powers)/sizeof(powers[0]);

    size_t cd = total_matches;
    size_t samplesize = cd;

    size_t n_violated_indices = 0;
    size_t *violated_indices = (size_t *) calloc(nentries, sizeof(size_t));

    sample_info* sampled_indices = (sample_info*) calloc(cd, sizeof(sample_info));

    size_t prev_violated_indices = 0;
    size_t matched_violated_indices = 0;

    sample_data* sampled_intervals = (sample_data *) calloc(cd, sizeof(sample_data));
    
    polynomial* p = nullptr;

    size_t count=0;
    for(unsigned long i=0; i<nentries;++i){double_x df;
        df.d=intervals[i].x;
        if(binary_fuse16_contain(df.x,filter)){
          size_t iindex = i;
      
          sampled_intervals[count].x = intervals[iindex].x;
          sampled_intervals[count].lb = intervals[iindex].lb;
          sampled_intervals[count].ub = intervals[iindex].ub;
          sampled_intervals[count].orig_lb = intervals[iindex].lb;
          sampled_intervals[count].orig_ub = intervals[iindex].ub;
          ++count;}
    }

    /* need to implement these functions */
    p = rlibm_generate_polynomial(sampled_intervals, samplesize, powers, powers_size, MAX_TRIES);

    if(p){
      rlibm_print_polyinfo(p);
    }
    else {
      printf("Could not generate the polynomial that satisifies all intervals, check for partial results with a few violated intervals\n");
    }
    
    free(p);
    free(sampled_intervals);
    free(sampled_indices);
    free(intervals);
    free(violated_indices);

    return 0;
}
