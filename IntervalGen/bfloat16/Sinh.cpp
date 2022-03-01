#include "IntervalGen/IntGenForBfloat16TwoApprox.h"
#include "luts.h"
#include "math.h"

enum RoundMode {RNE, RNA, RNZ, RNP, RNN};

float RoundDoubleToF8NWithSticky(double v,
                                 int bitlength,
                                 enum RoundMode rnd,
                                 unsigned sticky) {
  unsigned numMantissa = bitlength - 9;
  
  doubleX temp;
  temp.d = v;
  // Take care of NaN and infinity
  if ((temp.x & 0x7FF0000000000000) == 0x7FF0000000000000) return v;
  
  // Take care of zero
  if ((temp.x & 0x7FFFFFFFFFFFFFFF) == 0) return v;
  
  unsigned sign = (temp.x >= 0x8000000000000000) ? 0x80000000 : 0x0;
  temp.x &= 0x7FFFFFFFFFFFFFFF;
  
  // Otherwise it's a number that rounds to a real value.
  long exp = (temp.x >> 52lu) & 0x7FF;
  exp -= 1023l;
  unsigned long mantissa = temp.x & 0x000FFFFFFFFFFFFF;
  
  unsigned vminus = 0;
  unsigned roundBit = 0;
  
  if (exp < -150) {
    vminus = 0;
    roundBit = 0;
    sticky = 1;
  } else if (exp >= 128) {
    vminus = (1u << ((unsigned)bitlength - 1lu)) - 1u;
    vminus -= (1u << numMantissa);
    roundBit = 1;
    sticky = 1;
  } else {
    // double value is normal. Exp >= -150
    if ((mantissa & 0x000000000FFFFFFF) != 0) sticky = 1;
    mantissa &= 0xFFFFFFFFF0000000;
    mantissa <<= 3lu;
    
    if (exp < -126l) {
      long offset = -126l - exp;
      mantissa |= 0x0080000000000000;
      mantissa >>= (unsigned long)offset;
      exp = 0l;
    } else {
      exp += 127l;
    }
    
    unsigned long infExt = ((unsigned long)exp << 55lu) | mantissa;
    
    // 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000
    // xxxx xxxx xxxx xxxx rsss ssss ssss ssss ssss ssss ssss ssss ssss ssss ssss ssss
    if ((infExt & ((1lu << (63lu - (unsigned long)bitlength)) - 1lu)) != 0) sticky = 1;
    infExt >>= (63lu - (unsigned long)bitlength);
    roundBit = infExt & 0x1;
    vminus = (unsigned)(infExt >> 1lu);
  }
  
  unsigned lastBit = vminus & 0x1;
  unsigned roundDecision = 0;
  switch (rnd) {
    case RNE:
      roundDecision = (lastBit & roundBit) | (roundBit & sticky);
      break;
    case RNA:
      roundDecision = roundBit;
      break;
    case RNZ:
      roundDecision = 0;
      break;
    case RNP:
      if (!sign) roundDecision = roundBit | sticky;
      break;
    case RNN:
      if (sign) roundDecision = roundBit | sticky;
      break;
  }
  
  vminus += roundDecision;
  floatX res;
  res.x = vminus;
  if (bitlength < 32) res.x <<= 32 - bitlength;
  res.x |= sign;
  return res.f;
}

float IntervalGenerator2::MpfrCalculateFunction(float x) {
  if (x != x) return x;
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
  
  exact = mpfr_sinh(mval, mval, MPFR_RNDN);
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

bool IntervalGenerator2::ComputeSpecialCase(float x, float& res) {
    floatX fx;
    fx.f = x;
    
    fx.x &= 0x7FFFFFFF;
    
    if (fx.x <= 0x3de80000) {
        res = x;
        return true;
    }
    
    if (fx.x > 0x7F800000) {
        res = 0.0/0.0;
        return true;
    }
    
    if (fx.x >= 0x42b30000) {
        res = 1.0/0.0;
        return true;
    }
    
    return false;
}

double IntervalGenerator2::RangeReduction(float x) {
  
  floatX fx;
  fx.f = x;
  fx.x &= 0x7FFFFFFF;
  x = fx.f;

  double xp = x * CONST64BYLN2;
  int N = (int)xp;
  return x - N * LN2BY64;
}

double IntervalGenerator2::OutputCompensation(float x,
                                              double sinhp,
                                              double coshp) {

  floatX fx;
  fx.f = x;
  int sign = fx.x >= 0x80000000 ? 1 : 0;
  fx.x &= 0x7FFFFFFF;
  x = fx.f;

double xp = x * CONST64BYLN2;
  int N = (int)xp;
  int N2 = N % 64;
  if (N2 < 0) N2 += 64;
  int N1 = N - N2;
  int I = N1 / 64;
  double sinhHM = sinhH[I] * coshM[N2] + coshH[I] * sinhM[N2];
  double coshHM = sinhH[I] * sinhM[N2] + coshH[I] * coshM[N2];
  
  double res = coshHM * sinhp + sinhHM * coshp;
  if (sign) res = -res;
  return res;
}

void IntervalGenerator2::
SpecCaseRedInt(float x,
               double sinhLbGuess, bool& sinhLbSpec, double& sinhLbSpecVal,
               double sinhUbGuess, bool& sinhUbSpec, double& sinhUbSpecVal,
               double coshLbGuess, bool& coshLbSpec, double& coshLbSpecVal,
               double coshUbGuess, bool& coshUbSpec, double& coshUbSpecVal) {
    doubleX dx;
    
    double xp = x * CONST64BYLN2;
    int N = (int)xp;
    int N2 = N % 64;
    if (N2 < 0) N2 += 64;
    int N1 = N - N2;
    int I = N1 / 64;
    double sinhHM = sinhH[I] * coshM[N2] + coshH[I] * sinhM[N2];
    double coshHM = sinhH[I] * sinhM[N2] + coshH[I] * coshM[N2];
    
    // If CHM == 0, then sinh(R) can be any value.
    if (coshHM == 0) {
        sinhLbSpec = true;
        sinhUbSpec = true;
        dx.x = 0xFFEFFFFFFFFFFFFF;
        sinhLbSpecVal = dx.d;
        dx.x = 0x7FEFFFFFFFFFFFFF;
        sinhUbSpecVal = dx.d;
    }
    
    // If SHM == 0, then cosh(R) can be any value.
    if (sinhHM == 0) {
        coshLbSpec = true;
        coshUbSpec = true;
        dx.x = 0xFFEFFFFFFFFFFFFF;
        coshLbSpecVal = dx.d;
        dx.x = 0x7FEFFFFFFFFFFFFF;
        coshUbSpecVal = dx.d;
    }
}

void IntervalGenerator2::GuessInitialLbUb(double xp,
                                          double& sinhLb, double& sinhUb,
                                          double& coshLb, double& coshUb) {
    double A = cosh(xp);
    double B = sinh(xp);
    sinhLb = B;
    sinhUb = B;
    coshLb = A;
    coshUb = A;
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
    
  if (argc != 3) {
      printf("Usage: %s <reduced sinh file> <reduced cosh file>\n", argv[0]);
      exit(0);
  }
  
  IntervalGenerator2 SinhIntGen;
  
  int okay = 1;
  for (unsigned long i = 0; i < 0x10000; i++) {
    floatX input;
    input.x = (i << 16);
    float x = input.f;
    
    float result = SinhIntGen.MpfrCalculateFunction(x);
    
    if (input.x == 0x3de80000) {
      printf("okay until the input %.100e (%x)\n", x, input.x);
      printf("result = %.100e\n", result);
      okay = 0;
    }
  }
  
  SinhIntGen.CreateReducedIntervalFile(argv[1], argv[2]);
  
  return 0;
}
