#include "IntervalGen/IntGenForFloatROOneApprox.h"
#include "luts.h"
#include "math.h"

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

double IntervalGenerator::RangeReduction(float x) {
  doubleX fix;
  fix.d = (double)x;


  if (x >= 1.0) {
    // if x >= 1.0, use this code
    int m = fix.x >> 52lu;
    m -= 1023;
    fix.x &= 0xFFFFFFFFFFFFFlu;
    fix.x |= 0x3FF0000000000000lu;
    
    int onePlusIndex = (int)(fix.d * 128.0);
    int Findex = onePlusIndex - 128;
    double f = fix.d - onePlusIndex / 128.0;

    return f * log2OneByF[Findex];

  } else {
    // if x < 1.0, use this code
    int m = fix.x >> 52lu;
    m -= 1022;
    fix.x &= 0xFFFFFFFFFFFFFlu;
    fix.x |= 0x3FE0000000000000lu;
    
    int onetwentyeightmj = (int)(fix.d * 256.0) + 1;
    int Findex = 256 - onetwentyeightmj;
    double f = fix.d - onetwentyeightmj / 256.0;
    return f * oneByFForLess1[Findex];
  }
}
    
double IntervalGenerator::OutputCompensation(float x, double yp) {
  doubleX fix;
  fix.d = (double)x;
  
  if (x >= 1.0) {
    // if x >= 1.0, use this code
    int m = fix.x >> 52lu;
    m -= 1023;
    fix.x &= 0xFFFFFFFFFFFFFlu;
    fix.x |= 0x3FF0000000000000lu;
    
    int onePlusIndex = (int)(fix.d * 128.0);
    int Findex = onePlusIndex - 128;
    
    return yp + log2Lut[Findex] + m;
  } else {
    // if x < 1.0, use this code
    int m = fix.x >> 52lu;
    m -= 1022;
    fix.x &= 0xFFFFFFFFFFFFFlu;
    fix.x |= 0x3FE0000000000000lu;
    
    int onetwentyeightmj = (int)(fix.d * 256.0) + 1;
    int Findex = 256 - onetwentyeightmj;
    
    return yp + log2OneMinusJBy256[Findex] + m;
  }

}

void IntervalGenerator::GuessInitialLbUb(double x,
                                         double roundingLb, double roundingUb,
                                         double xp, double& lb, double& ub) {
    // Take a guess of yp that will end up in roundingLb, roundingUb.                                
  //printf("roundingLb : %.100e\n", roundingLb);                                                   
  //printf("roundingUb : %.100e\n", roundingUb);                                                   
    doubleX tempYp;
    tempYp.d = log1p(xp) / log(2);
    //printf("tempYp     : %.100e\n", tempYp.d);                                                     
    double tempY = OutputCompensation(x, tempYp.d);
    //printf("tempY      : %.100e\n", tempY);                                                        

    if (tempY < roundingLb) {
        // if tempY < roundingLb, then keep increasing tempYp until tempY is                         
        // >= roundingLb.                                                                            
        do {
          if (tempYp.d >= 0.0) tempYp.x++;
          else tempYp.x--;
            tempY = OutputCompensation(x, tempYp.d);
        } while (tempY < roundingLb);

        // Then, it had better be that roundingLb <= tempY <= roundingUb.                            
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
        // if tempY > roundingUb, then keep decreasing tempYp until tempY is                         
        // <= roundingUb.                                                                            
        do {
          if (tempYp.d >= 0.0) tempYp.x--;
          else tempYp.x++;
            tempY = OutputCompensation(x, tempYp.d);
        } while (tempY > roundingUb);

        // Then, it had better be that roundingLb <= tempY <= roundingUb.                            
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

void IntervalGenerator::SpecCaseRedInt(float x,
                                       double glb, bool& blb, double& slb,
                                       double gub, bool& bub, double& sub) {
    blb = false;
    bub = false;
    return;
}

int main(int argc, char** argv) {
    mpfr_init2(mval, 200);

    if (argc != 3) {
        printf("Usage: %s <Name of File> <Oracle File>\n", argv[0]);
        exit(0);
    }

    IntervalGenerator LnIntGen;
    LnIntGen.CreateReducedIntervalFile(argv[1], argv[2]);

    mpfr_clear(mval);
    return 0;
}
