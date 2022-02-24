#define MPFR_PREC 200
#include "test_helper.h"
#include <assert.h>

float rlibm_mpfr_calculate(float x){
  mpfr_set_d(mval, x, MPFR_RNDN);
  mpfr_exp(mval, mval, MPFR_RNDN);

  float oresult = mpfr_get_flt(mval, MPFR_RNDN);

  return oresult;
}

float rlibm_test(float x){
  float result = rlibm_fast_exp(x);
  return result;
}

float rlibm32_test(float x){
  float result = rlibm_exp(x);
  return result;
}


int main(int argc, char** argv){

  printf("Usage:%s <output file>\n", argv[0]);
  if(argc != 2){
    printf("insufficient arguments\n");
    exit(0);
  }
  rlibm_correctness_test("Float - Exp", argv[1]);
  return 0;
}
