#define MPFR_PREC 200
#include "test_helper.h"
#include <assert.h>

float rlibm_mpfr_calculate(float x){
  mpfr_set_d(mval, x, MPFR_RNDN);
  mpfr_exp2(mval, mval, MPFR_RNDN);

  float jresult = rlibm_mpfr_to_float_jay(mval);
  float oresult = mpfr_get_flt(mval, MPFR_RNDN);

  if(oresult != oresult){
    assert(jresult != jresult);
  }
  else{
    assert (jresult == oresult);
  }
  return oresult;
}

float rlibm_test(float x){
  float result = rlibm_fast_exp2_adapt(x);
  return result;
}

float rlibm32_test (float x){
  float result = rlibm_exp2(x);
  return result;
}


int main(int argc, char** argv){

  printf("Usage:%s <output file>\n", argv[0]);
  if(argc != 2){
    printf("insufficient arguments\n");
    exit(0);
  }
  rlibm_correctness_test("Float - Exp2 Adapt", argv[1]);
  return 0;
}
