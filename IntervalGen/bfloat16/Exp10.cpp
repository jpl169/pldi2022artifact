#include "IntervalGen/IntGenForBfloat16OneApprox.h"
#include "luts.h"
#include "math.h"

#ifdef __APPLE__
#define exp10fFunc __exp10f
#else
#define exp10fFunc exp10f
#endif

#ifdef __APPLE__
#define exp10Func __exp10
#else
#define exp10Func exp10
#endif

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
  
  exact = mpfr_exp10(mval, mval, MPFR_RNDN);
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
    
    // If x is less than this value, then 10^x rounds to 0
    if (fx.f <= -4.515450286865234375e+01) {
        res = 0.0;
        return true;
    }
    
    // If x is between these two values, then 10^x rounds to 1.0
    if (-1.294298357379375374875962734222412109375e-08 <= fx.f &&
        fx.f <= 2.58859671475875074975192546844482421875e-08) {
        res = 1.0;
        return true;
    }
    
    // If x is greater than this value, then 10^x rounds to infinity
    if (3.8531841278076171875e+01 <= fx.f) {
        res = 1.0/0.0;
        return true;
    }
    
    // If x is NaN, then 10^x is NaN
    if ((fx.x & 0x7FFFFFFF) > 0x7F800000) {
        res = 0.0/0.0;
        return true;
    }
    
    return false;
}

double IntervalGenerator::RangeReduction(float x) {
    double xp = x * 2.12603398072791179629348334856331348419189453125e+02;
    int N = (int)xp;
    return x - N *
    4.703593682249706219022922226713490090332925319671630859375e-03;
}
    
double IntervalGenerator::OutputCompensation(float x, double yp) {
    double xp = x * 2.12603398072791179629348334856331348419189453125e+02;
    int N = (int)xp;
    int N2 = N % 64;
    if (N2 < 0) N2 += 64;
    int N1 = N - N2;
    int M = N1 / 64;
    
    return yp * ldexp(exp2JBy64[N2], M);
}

void IntervalGenerator::GuessInitialLbUb(double xp, double& lb, double& ub) {
    lb = exp10Func(xp);
    ub = exp10Func(xp);
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
  
  IntervalGenerator Exp10IntGen;
  Exp10IntGen.CreateReducedIntervalFile(argv[1]);
  
  mpfr_clear(mval);
  return 0;
}
