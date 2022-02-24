#define __ELEM__ rlibm_prog_tf32_sinpi
#include "LibTestHelper_tf32_manual_oracle.h"

double GetOracle(float x) {
  float_x fX;
  fX.f = x;
  
  if ((fX.x & 0x7FFFFFFF) >= 0x4b000000) {
    if ((fX.x & 0x7FFFFFFF) >= 0x7F800000) {
      return 0.0f/0.0f;
    }
    return 0.0f;
  }
  
  int sticky = 0;
  
  // Call the elementary function. Make it round to zero. Then we can tell
  // what the sticky bit is from the return value.
  double reduced = fmod(x, 2.0);
  
  if (reduced == 0.0 || reduced == 1.0)  {
    return 0.0;
  } else if (reduced == 0.5 || reduced == -1.5) {
    return 1.0;
  } else if (reduced == 1.5 || reduced == -0.5) {
    return -1.0;
  } else {
    mpfr_const_pi(mval, MPFR_RNDN);
    mpfr_mul_d(mval, mval, reduced, MPFR_RNDN);
    int status = mpfr_sin(mval, mval, MPFR_RNDZ);
    if (status != 0) sticky |= 0x1;
    double dres = mpfr_get_d(mval, MPFR_RNDZ);
    if (mpfr_cmp_d(mval, dres) != 0) sticky |= 0x1;
    return RoundDoubleToF8NWithSticky(dres, 19, RNE, sticky);
  }
}

int main(int argc, char** argv) {

    if (argc != 2) {
        printf("UsageL %s <log file>\n", argv[0]);
        exit(0);
    }
    
    RunTest(argv[1]);
    return 0;
}
