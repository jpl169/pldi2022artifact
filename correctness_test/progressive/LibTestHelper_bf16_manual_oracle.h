#define _GNU_SOURCE
#include <stdio.h>
#include "progressive/float_prog_lib.h"
#include "math.h"
#include <x86intrin.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <errno.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>
#include <mpfr.h>

mpfr_t mval;
enum RoundMode {RNE, RNA, RNZ, RNP, RNN};

double GetOracle(float x);
float RoundDoubleToF8NWithSticky(double v, int bitlength, enum RoundMode rnd, unsigned sticky);

void RunTest(char* logFile) {
  
  FILE* lfd = fopen(logFile, "w");
  
  unsigned long wrongResult = 0;
  unsigned bitlen = 16;
  mpfr_init2(mval, 1000);
  
  unsigned long upperlimit = 1lu << (unsigned long)bitlen;
  for (unsigned long count = 0x0; count < upperlimit; count++) {
    float_x xbase;
    xbase.x = count << (32lu - (unsigned long)bitlen);
    float x = xbase.f;
    
    double res = __ELEM__(x);
    double oracleResult = GetOracle(x);
    double roundedRes = RoundDoubleToF8NWithSticky(res, 16, RNE, 0);
    
    // This means both resutls are NaN
    if (oracleResult != oracleResult && roundedRes != roundedRes) continue;
    
    if (oracleResult != roundedRes) {
      wrongResult++;
      printf( "x       = %.70e\n", x);
      printf( "bitlength = %u\n", bitlen);
      printf( "rlibm   = %.70e (%lx)\n", res, *(unsigned long*)&res);
      printf( "rounded = %.70e (%lx)\n", roundedRes, *(unsigned long*)&roundedRes);
      printf( "oracle  = %.70e (%lx)\n", oracleResult, *(unsigned long*)&oracleResult);
      printf( "\n");
    }
    
    
    if (count % 100 == 0) {
      printf("bitlen: %2.u, count = %12.lu (%lu)\r", bitlen, count, wrongResult);
      fflush(stdout);
    }
    
  }
    
  mpfr_clear(mval);
  printf("\n\nrlibm  wrong result: %lu\n", wrongResult);
  fclose(lfd);
}

float RoundDoubleToF8NWithSticky(double v,
                                 int bitlength,
                                 enum RoundMode rnd,
                                 unsigned sticky) {
  unsigned numMantissa = bitlength - 9;
  
  double_x temp;
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
  float_x res;
  res.x = vminus;
  if (bitlength < 32) res.x <<= 32 - bitlength;
  res.x |= sign;
  return res.f;
}
