#define __ELEM__ rlibm_prog_tf32_cospi
#include "LibTestHelper_tf32_manual_oracle.h"

double GetOracle(float x) {
  float_x fX;
  fX.f = x;
  fX.x &= 0x7FFFFFFF;
  
  if (fX.x >= 0x4b000000) {
    // If x >= 0x7F800000, then result is NaN
    if (fX.x >= 0x7F800000) return 0.0f/0.0f;
    // If x >= 2^24, then result is always 1.0f
    if (fX.x >= 0x4b800000) return 1.0f;
    // If x >= 2^23, then if x is even, then 1.0f
    if ((fX.x & 0x1) == 0) return 1.0f;
    // Otherwise, then -1.0f
    return -1.0f;
  }
  
  int sticky = 0;
  // Set float value to mpfr. This should be exact
  double xp = x * 2;
  int N = (int)xp;
  double R = N * 0.5 - x;
  
  // Call the elementary function. Make it round to zero. Then we can tell
  // what the sticky bit is from the return value.
  double reduced = fmod(x, 2.0);
  
  mpfr_const_pi(mval, MPFR_RNDN);
  mpfr_mul_d(mval, mval, reduced, MPFR_RNDN);
  
  if (R == 0) {
    int status = mpfr_cos(mval, mval, MPFR_RNDN);
    double result = mpfr_get_d(mval, MPFR_RNDN);
    float fr = (float)result;
    return (double)fr;
  } else {
    int status = mpfr_cos(mval, mval, MPFR_RNDZ);
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
