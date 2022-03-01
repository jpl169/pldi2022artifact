#include "IntervalGen/IntGenForBfloat16OneApprox.h"
#include "luts.h"
#include "math.h"

float IntervalGenerator::MpfrCalculateFunction(float x) {
  int exact = mpfr_set_d(mval, x, MPFR_RNDN);
  if (exact != 0) {
    printf("uh oh... this value isn't exactly representable\n");
    printf("x = %.100e\n", x);
  }
  exact = mpfr_subnormalize(mval, exact, MPFR_RNDN);
  if (exact != 0) {
    printf("uh oh... something going on with subnormal\n");
    printf("x = %.100e\n", x);
  }
  
  exact = mpfr_exp2(mval, mval, MPFR_RNDN);
  exact = mpfr_check_range(mval, exact, MPFR_RNDN);
  exact = mpfr_subnormalize(mval, exact, MPFR_RNDN);
  double result = mpfr_get_d(mval, MPFR_RNDN);
  float result2 = mpfr_get_flt(mval, MPFR_RNDN);
  if (result != result2) {
    printf("uh oh... something going on with the result\n");
    printf("x = %.100e\n", x);
  }
  
  return result;
}

bool IntervalGenerator::ComputeSpecialCase(float x, float& res) {
    floatX fx;
    fx.f = x;
    
    // If x =< -150, then 2^x rounds to 0
    if (fx.f <= -150) {
        res = 0.0;
        return true;
    }
    
    // If x is between these values, 2^x rounds to 1.0
    if (-4.2995662141720458748750388622283935546875e-08 <= fx.f &&
        fx.f <= 8.59913171780135598964989185333251953125e-08) {
        res = 1.0;
        return true;
    }
    
    // If x >= 128, then 2^x rounds to infinity
    if (128 <= fx.f) {
        res = 1.0/0.0;
        return true;
    }
    
    // NaN ressults in NaN
    if ((fx.x & 0x7FFFFFFF) > 0x7F800000) {
        res = 0.0/0.0;
        return true;
    }
    
    return false;
}

double IntervalGenerator::RangeReduction(float x) {
    double xp = x * 64;
    int N = (int)xp;
    return x - N * 0.015625;
}
    
double IntervalGenerator::OutputCompensation(float x, double yp) {
    double xp = x * 64;
    int N = (int)xp;
    int N2 = N % 64;
    if (N2 < 0) N2 += 64;
    int N1 = N - N2;
    int M = N1 / 64;
    
    return yp * ldexp(exp2JBy64[N2], M);
}

void IntervalGenerator::GuessInitialLbUb(double xp, double& lb, double& ub) {
    lb = exp2(xp);
    ub = exp2(xp);
    return;
}

void IntervalGenerator::SpecCaseRedInt(float x,
                                       double glb, bool& blb, double& slb,
                                       double gub, bool& bub, double& sub) {
    blb = false;
    bub = false;
    return;
}

int main(int argc, char** argv) {
  int bitlen = 16;
  int numExpBit = 8;
  int bias = (1 << (numExpBit - 1)) - 1;
  int emax = (1 << numExpBit) - 1 - bias;
  mpfr_set_default_prec(bitlen - numExpBit);
  mpfr_set_emin(1 - bias - ((int)bitlen - 1 - numExpBit) + 1);
  mpfr_set_emax(emax);
  mpfr_init(mval);
    
  if (argc != 2) {
      printf("Usage: %s <Name of File>\n", argv[0]);
      exit(0);
  }
  
  IntervalGenerator Exp2IntGen;
  Exp2IntGen.CreateReducedIntervalFile(argv[1]);

  mpfr_clear(mval);
  return 0;
}
