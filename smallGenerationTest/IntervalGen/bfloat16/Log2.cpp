#include "IntervalGen/IntGenForBfloat16OneApprox.h"
#include "luts.h"
#include "math.h"

// ComputeOracleResult:
// Given a tf32 input, compute the correctly rouned tf32 result
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
  
  exact = mpfr_log2(mval, mval, MPFR_RNDN);
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

// TODO : For the given input, describe whether it is a special case input
// or not. If it is a special case input, give the result in "res" and return
// true. Otherwise, return false.
// MAKE SURE : To identify all inputs that result in NaN or infinities.
// Otherwise, interval generation will go into infinite loop
// MAKE SURE : To identify all inputs with a singleton odd interval and
// classify it as special cases. Otherwise, we will not be able to generate
// a polynomial using the resulting file.
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
        fx.x = 0x7FFF0000;
        res = fx.f;
        return true;
    }
    
    return false;
}

// TODO : This is where we write the range reduction function, x' = RR(x).
// Given an original input "x" compute the reduced input "x'" and return x'.
// If not using range reduction function, simply return x.
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

// TODO : This is where we write the output compensation function, y = OC(y').
// Given the output of the polynomial "y'" (passed via the argument yp),
// compute the final output "y." You may need the original input (x) to
// compute additional information to produce "y."
// If not using range reduction, simply return yp.
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
    
    return yp + log2Lut[FIndex] + m;
}

// TODO : To compute the reduced interval from the odd interval, please give an
// initial singleton reduced interval point. This singleton value, if used
// with the output compensation function, MUST PRODUCE a value within the
// rounding interval.
// NOTE : The vast majority of the code in this function tries to make sure
// that the given singleton point does indeed generate a value within the
// rounding interval, as long as the initial guessing point is within a few
// ulps away from such a point.
// Arguments:
// x : The original input x
// [roundingLb, roundingUb] : The odd interval
// xp : the reduced input
// [lb, ub] : (Return values) The initial singleton reduced interval
void IntervalGenerator::GuessInitialLbUb(double xp, double& lb, double& ub) {
    lb = log1p(xp) / log(2);
    ub = log1p(xp) / log(2);
    return;
}

// If computing the reduced interval is TRULY TRULY special, we can use this
// function to signify that the reduced interval is special.
// Arguments:
// x : the original input x
// glb : The lower bound of odd interval
// blb : Whether the lower bound of the reduced interval is special
// slb : The lower bound of the reduced interval
// gub : The upper bound of odd interval
// blb : Whether the upper bound of the reduced interval is special
// slb : The upper bound of the reduced interval.
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
  
  IntervalGenerator Log2IntGen;
    // TODO : Make sure the input range here matches with the input ranges given
    // in the oracle generation step.
  Log2IntGen.CreateReducedIntervalFile(0x3f80, 0x4000, argv[1]);
  
  mpfr_clear(mval);
  return 0;
}
