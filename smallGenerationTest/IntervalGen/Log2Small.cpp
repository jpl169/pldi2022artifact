#include "IntervalGen/IntGenForFloatROOneApprox.h"
#include "luts.h"
#include "math.h"

// TODO : For the given input, describe whether it is a special case input
// or not. If it is a special case input, give the result in "res" and return
// true. Otherwise, return false.
// MAKE SURE : To identify all inputs that result in NaN or infinities.
// Otherwise, interval generation will go into infinite loop
// MAKE SURE : To identify all inputs with a singleton odd interval and
// classify it as special cases. Otherwise, we will not be able to generate
// a polynomial using the resulting file.
bool IntervalGenerator::ComputeSpecialCase(float x, double& res) {
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

    int exp;
    float remainder = frexpf(fx.f, &exp);

    if (remainder == 0.5f || remainder == -0.5f) {
      res = (exp - 1);
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
void IntervalGenerator::GuessInitialLbUb(double x,
                                         double roundingLb, double roundingUb,
                                         double xp, double& lb, double& ub) {
  // TODO : In most cases, it suffices to encode the function that the
  // polynomial is approximating.
  // Example: For log2(x), after the range reduction function, the polynomial
  // approximates the function ln(1 + x) / ln(2). Hence, the below code
  // computes that.
  // Another e.g.: If you want to create sin(x) without range reduction, it
  // will suffice to simply call sin(x).
  double initialGuess = log1p(xp) / log(2);
  
  // From here on out: In the case that evaluating the output compensation
  // function using the initialGuess does not result in a value within
  // [roundingLb, roundingUb], we try to move initialGuess up/down by a few ulps
  // to find an initial singleton point for the reduced interval [lb, ub].
  // This can happen if computing "initialGuess" takes multiple computations
  // and the formula experiences numerical errors.
  doubleX tempYp;
  tempYp.d = initialGuess;
  
  double tempY = OutputCompensation(x, tempYp.d);
  if (tempY < roundingLb) {
    do {
      if (tempYp.d >= 0.0) tempYp.x++;
      else tempYp.x--;
      tempY = OutputCompensation(x, tempYp.d);
    } while (tempY < roundingLb);
               
    if (tempY > roundingUb) {
      printf("Error during GuessInitialLbUb: lb > ub.\n");
      printf("x = %.100e\n", x);
      exit(0);
    }
    lb = tempYp.d;
    ub = tempYp.d;
    return;
  }

  if (tempY > roundingUb) {
    do {
      if (tempYp.d >= 0.0) tempYp.x--;
      else tempYp.x++;
      tempY = OutputCompensation(x, tempYp.d);
    } while (tempY > roundingUb);

    if (tempY < roundingLb) {
      printf("Error during GuessInitialLbUb: lb > ub.\n");
      printf("x = %.100e\n", x);
      exit(0);
    }
    lb = tempYp.d;
    ub = tempYp.d;
    return;
  }
  
  lb = tempYp.d;
  ub = tempYp.d;
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

//
int main(int argc, char** argv) {
  mpfr_init2(mval, 200);

  if (argc != 3) {
    printf("Usage: %s <Output filename for the intervals> <Oracle File>\n", argv[0]);
    exit(0);
  }

  IntervalGenerator LnIntGen;
  
  // TODO : Make sure the input range here matches with the input ranges given
  // in the oracle generation step.
  LnIntGen.CreateReducedIntervalFile(0x3f800000, 0x40000000, argv[1], argv[2]);

  mpfr_clear(mval);
  return 0;
}
