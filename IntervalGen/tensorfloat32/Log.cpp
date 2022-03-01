#include "IntervalGen/IntGenForTf32OneApprox.h"
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
  
  exact = mpfr_log(mval, mval, MPFR_RNDN);
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
    if (x == 0.0) {
        res = -1.0/0.0;
        return true;
    } else if (fx.x == 0x7F800000) {
        res = x;
        return true;
    } else if (fx.x > 0x7F800000) {
        fx.x = 0x7FFFFFFF;
        res = fx.f;
        return true;
    }
    
    return false;
}

double IntervalGenerator::RangeReduction(float x) {
    floatX fix, fit;
    
    int m = 0;
    fix.f = x;
    if (fix.x < 0x800000) {
        fix.f *= pow(2, 23);
        m -= 23;
    }
    m += fix.x >> 23;
    m -= 127;
    fix.x &= 0x007FFFFF;
    fix.x |= 0x3F800000;
    
    fit.x = fix.x & 0x007F0000;
    int FIndex = fit.x >> 16;
    fit.x |= 0x3F800000;
    double F = fit.f;
    
    double f = fix.f - F;
    return f * log2OneByF[FIndex];
}
    
double IntervalGenerator::OutputCompensation(float x, double yp) {
    floatX fix, fit;
    
    int m = 0;
    fix.f = x;
    if (fix.x < 0x800000) {
        fix.f *= pow(2, 23);
        m -= 23;
    }
    m += fix.x >> 23;
    m -= 127;
    fix.x &= 0x007FFFFF;
    fix.x |= 0x3F800000;
    
    fit.x = fix.x & 0x007F0000;
    int FIndex = fit.x >> 16;
    
    return yp + lnLutHIGH[FIndex] + m * LN2HIGH;
}

void IntervalGenerator::GuessInitialLbUb(double x, double roundingLb, double roundingUb, double xp, double& lb, double& ub) {
  lb = log1p(xp);
  ub = log1p(xp);
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
  int bitlen = 19;
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
  
  IntervalGenerator Log2IntGen;
  Log2IntGen.CreateReducedIntervalFile(argv[1]);
  
  mpfr_clear(mval);
  return 0;
}
