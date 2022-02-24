#ifndef __RLIBM_FAST_TEST_HELPER_H__
#define __RLIBM_FAST_TEST_HELPER_H__

#include <mpfr.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdint.h>
#include "float_lib.h"
#include "float_math.h"

mpfr_t mval;

float rlibm_mpfr_calculate(float);
float rlibm_test(float);
float rlibm32_test(float);

#ifdef RLIBM32_ORACLE
#define ORACLE rlibm32_test
#else
#define ORACLE rlibm_mpfr_calculate
#endif


float rlibm_mpfr_to_float_jay(mpfr_t mval) {

  double ret_val = mpfr_get_d(mval, MPFR_RNDN);
  
  if (ret_val== 0) return 0.0f;
  if (ret_val != ret_val) {
    return ret_val;
  }
  
  if (mpfr_cmp_d(mval, pow(2, -150)) <= 0 && mpfr_cmp_d(mval, -pow(2, -150)) >= 0) {
    return 0.0f;
  }
  
  long exp;
  double fr = mpfr_get_d_2exp(&exp, mval, MPFR_RNDN);
  fr *= 2;
  exp--;
  
  if (mpfr_cmp_d(mval, 0.0) > 0) {
    if (mpfr_cmp_d(mval, 1.5 * pow(2, -149)) < 0) return pow(2, -149);
    if (mpfr_cmp_d(mval, pow(2, -148)) < 0) return pow(2, -148);
    
  } else {
    if (mpfr_cmp_d(mval, -1.5 * pow(2, -149)) > 0) return -pow(2, -149);
    if (mpfr_cmp_d(mval, -pow(2, -148)) > 0) return -pow(2, -148);
  }
  
  if (exp >= -148 && exp <= -127) {
    int prec = 150 + exp;
    mpfr_t r;
    mpfr_init2(r, prec);
    mpfr_set(r, mval, MPFR_RNDN);
    ret_val= mpfr_get_d(r, MPFR_RNDN);
    mpfr_clear(r);
    return ret_val;
  } else {
    mpfr_t r;
    mpfr_init2(r, 24);
    mpfr_set(r, mval, MPFR_RNDN);
    ret_val= mpfr_get_d(r, MPFR_RNDN);
    mpfr_clear(r);
    return ret_val;
  }
}

void rlibm_correctness_test(char const* function_name, char* res_filename){
  
  int printcount = 0;

  mpfr_init2(mval, MPFR_PREC);

  unsigned long wrong_count = 0;
  unsigned long count = 0;


  FILE* f = fopen(res_filename, "w");

  float x;
  float_x x_base;

  for (count = 0x0; count < 0x100000000; count++){
    x_base.x = count;
    x = x_base.f;

    //float doracle = rlibm_mpfr_calculate(x);
    float doracle = ORACLE(x);
    float rresult = rlibm_test(x);

    if(count % 100000000  == 0){
      printf("Completed count now is %lu\n", count);
    }
    
    // if rlibm result is nan and oracle is nan, continue
    if(rresult != rresult && doracle != doracle) continue;
    
    if( rresult != doracle){
      if (printcount < 10) {
	fprintf(f, "count = %lu\n", count);
	printf("count = %lu\n", count);
	fprintf(f, "rlibm  result = %.100e\n", rresult);
	printf("rlibm  result = %.100e\n", rresult);
	fprintf(f, "oracle result = %.100e\n", doracle);
	printf("oracle result = %.100e\n", doracle);
	printcount++;
      }
      wrong_count++;      
    }
  }
  fprintf(f, "%s TEST RESULT:\n", function_name);
  if (wrong_count == 0) {
    fprintf(f, "RLIBM returns correct result for all inputs\n");
  } else {
    fprintf(f, "RLIBM: Found %lu/%lu inputs with wrong result\n", wrong_count, count);
  } 
  fclose(f);
  mpfr_clear(mval);
}

#endif
