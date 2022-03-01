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
  floatX fX;
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
    return RoundDoubleToF8NWithSticky(dres, 16, RNE, sticky);
  }
}

bool IntervalGenerator2::ComputeSpecialCase(float x, float& res) {
    floatX fX;
    fX.f = x;
    unsigned s = fX.x & 0x80000000;
    fX.x &= 0x7FFFFFFF;
    
    // Special cases:
    if (fX.x <= 0x3bc50000) {
        res = PI * (double)x;
        return true;
    }
    
    if (fX.x >= 0x43000000) {
        if (fX.x >= 0x7F800000) {
            res = 0.0f/0.0f;
            return true;
        }
        res = 0.0f;
        return true;
    }
    
    return false;
}



double IntervalGenerator2::RangeReduction(float x) {
    floatX fX;
    fX.f = x;
    fX.x &= 0x7FFFFFFF;
    
    double xp = fX.f * 512;
    unsigned N = (unsigned)xp;
    unsigned N2 = N & 0xFF;
    unsigned I = N >> 8;
    double R;
    
    if (I & 0x1) {
        N2 = 255 - N2;
        R = (N + 1) * 0.001953125 - fX.f;
    } else R = fX.f - N * 0.001953125;
    
    return R;
}

double IntervalGenerator2::OutputCompensation(float x,
                                              double sinpip,
                                              double cospip) {
    floatX fX;
    fX.f = x;
    unsigned s = fX.x & 0x80000000;
    fX.x &= 0x7FFFFFFF;
    
    double xp = fX.f * 512;
    unsigned N = (unsigned)xp;
    unsigned N2 = N & 0xFF;
    unsigned I = N >> 8;
    double R;
    
    if (I & 0x1) {
        N2 = 255 - N2;
        R = (N + 1) * 0.001953125 - fX.f;
    } else R = fX.f - N * 0.001953125;
    
    if (I & 0x2) s ^= 0x80000000;
    
    fX.f = cospiMBy512[N2] * sinpip + sinpiMBy512[N2] * cospip;
    fX.x ^= s;
    
    return fX.f;
}

void IntervalGenerator2::
SpecCaseRedInt(float x,
               double sinpiLbGuess, bool& sinpiLbSpec, double& sinpiLbSpecVal,
               double sinpiUbGuess, bool& sinpiUbSpec, double& sinpiUbSpecVal,
               double cospiLbGuess, bool& cospiLbSpec, double& cospiLbSpecVal,
               double cospiUbGuess, bool& cospiUbSpec, double& cospiUbSpecVal) {

    doubleX dx, dx1, dx2;
    floatX fX;
    fX.f = x;
    unsigned s = fX.x & 0x80000000;
    fX.x &= 0x7FFFFFFF;
    
    double xp = fX.f * 512;
    unsigned N = (unsigned)xp;
    unsigned N2 = N & 0xFF;
    unsigned I = N >> 8;
    double R;
    
    if (I & 0x1) {
        N2 = 255 - N2;
        R = (N + 1) * 0.001953125 - fX.f;
    } else R = fX.f - N * 0.001953125;
    
    if (I & 0x2) s ^= 0x80000000;

    double cospiM = cospiMBy512[N2];
    double sinpiM = sinpiMBy512[N2];
    double SINPIR = sinpiLbGuess;
    double COSPIR = cospiLbGuess;

    if (cospiM == 0) {
        sinpiLbSpecVal = -1.0e300;
        sinpiUbSpecVal = 1.0e300;
        sinpiLbSpec = true;
        sinpiUbSpec = true;
    } else if (SINPIR == 0) {
        sinpiLbSpecVal = 0;
        sinpiUbSpecVal = 0;
        sinpiLbSpec = true;
        sinpiUbSpec = true;
    }

    if (sinpiM == 0) {
        cospiLbSpecVal = -1.0e300;
        cospiUbSpecVal = 1.0e300;
        cospiLbSpec = true;
        cospiUbSpec = true;
    } else if (COSPIR == 0) {
        cospiLbSpecVal = 0;
        cospiUbSpecVal = 0;
        cospiLbSpec = true;
        cospiUbSpec = true;
    }
}

void IntervalGenerator2::GuessInitialLbUb(double xp,
                                          double& sinpiLb, double& sinpiUb,
                                          double& cospiLb, double& cospiUb) {
    double A = cos(xp * PI);
    double B = sin(xp * PI);
    sinpiLb = B;
    sinpiUb = B;
    cospiLb = A;
    cospiUb = A;
}

int main(int argc, char** argv) {
  mpfr_init2(mval, 500);
  
  if (argc != 3) {
      printf("Usage: %s <reduced sinpi file> <reduced cospi file>\n", argv[0]);
      exit(0);
  }
  
  IntervalGenerator2 SinpiIntGen;
  
  /*
  int okay = 1;
  for (unsigned long i = 0; i < 0x10000; i++) {
    floatX input;
    input.x = (i << 16);
    float x = input.f;
    
    float result = SinpiIntGen.MpfrCalculateFunction(x);
    
    float yame = PI * (double)x;
    yame = RoundDoubleToF8NWithSticky(yame, 16, RNE, 0);
    
    if (input.x == 0x3bc50000) {
      //printf("okay until input %.100e (%x)\n", x, input.x - 0x10000);
      printf("result = %.100e\n", result);
      printf("yame   = %.100e\n", yame);
    }
  }
  */
  
  
  SinpiIntGen.CreateReducedIntervalFile(argv[1], argv[2]);
  
  return 0;
}
