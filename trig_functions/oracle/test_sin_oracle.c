#include <stdio.h>
#include<stdlib.h>
#include<mpfr.h>

typedef union{
  double d;
  unsigned long x;
} doubleX;

typedef union {
  float f;
  unsigned x;
}floatX;

mpfr_t mval;

mpfr_t rno_val;

enum mode { RN, RA, RU, RD, RZ};

float compute_oracle(doubleX oracle_res, enum mode a){

  float result = 0.0;
  switch (a){
  case RN:   
    mpfr_set_d(rno_val, oracle_res.d, MPFR_RNDN);
    float rno_result = mpfr_get_flt(rno_val, MPFR_RNDN);
    return rno_result;
    break;

  default:
    printf("Rounding mode not supported\n");
    exit(1);
    
  }

  return result;
}

int main(int argc, char** argv){


  if(argc != 2){
    printf("Enter the oracle file name\n");
    exit(1);
  }

  FILE* fp = fopen(argv[1], "r");

  if(fp == NULL){
    printf("Cannot open oracle file\n");
    exit(1);
  }

  mpfr_init2(mval, 2000);

  mpfr_init2(rno_val, 200);

  unsigned long count  = 0;
  float x;
  floatX xbase;

  doubleX oracle_res;

  unsigned long wrong = 0;

  for(count = 0; count < 0x100000000; count++){

    if(count % 0x100000 == 0){
      printf("Completed count = %lx \n", count);
    }

    xbase.x = count;

    mpfr_set_d(mval, xbase.f, MPFR_RNDN);
    mpfr_sin(mval, mval, MPFR_RNDN);
    float mpfr_result = mpfr_get_flt(mval, MPFR_RNDN);
    
    fread(&oracle_res.d, sizeof(double), 1, fp);

    float foracle_res = compute_oracle(oracle_res, RN);

    if((foracle_res != foracle_res)){

      if(mpfr_result != mpfr_result){
      }
      else{
	printf("inconsistent NANs mpfr and oracle results for count = %lx\n", count);
	wrong++;
      }
      continue;
    }

    if((foracle_res == foracle_res) && (mpfr_result == mpfr_result)){
      
      if(foracle_res != mpfr_result){
	printf("inconsistent non-NAN mpfr and oracle results for count = %lx\n", count);
	wrong++;
      }
    }
    
  }

  printf("the total inconsistent results = %ld\n", wrong);

  fclose(fp);
  mpfr_clear(mval);

  return 0;
}
