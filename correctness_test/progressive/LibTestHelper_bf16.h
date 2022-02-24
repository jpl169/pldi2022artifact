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

double GetOracle(float x) {
  
  int exact = mpfr_set_d(mval, x, MPFR_RNDZ);
  if (exact != 0) {
    printf("uh oh... this value isn't exactly representable\n");
    printf("x = %.100e\n", x);
  }
  exact = mpfr_subnormalize(mval, exact, MPFR_RNDZ);
  if (exact != 0) {
    printf("uh oh... something going on with subnormal\n");
    printf("x = %.100e\n", x);
  }
  
  exact = __MPFR_ELEM__(mval, mval, MPFR_RNDN);
  exact = mpfr_check_range(mval, exact, MPFR_RNDN);
  exact = mpfr_subnormalize(mval, exact, MPFR_RNDN);
  double result = mpfr_get_d(mval, MPFR_RNDN);
  
  return result;
}

double RoundCorrectly(double d) {
  int exact = mpfr_set_d(mval, d, MPFR_RNDN);
  exact = mpfr_check_range(mval, exact, MPFR_RNDN);
  exact = mpfr_subnormalize(mval, exact, MPFR_RNDN);
  double result = mpfr_get_d(mval, MPFR_RNDN);
  return result;
}


void RunTest(char* logFile) {
  
  FILE* lfd = fopen(logFile, "w");
  
  unsigned long wrongResult = 0;
  unsigned bitlen = 16;
  
  mpfr_set_default_prec(bitlen - 8);
  mpfr_set_emin(-126 - (int)bitlen + 10);
  mpfr_set_emax(128);
  mpfr_init(mval);
  
  // 1000 0000 0000 0000 0000
  unsigned long upperlimit = 1lu << (unsigned long)bitlen;
  for (unsigned long count = 0x0; count < upperlimit; count++) {
    float_x xbase;
    xbase.x = count << (32lu - (unsigned long)bitlen);
    float x = xbase.f;
    
    double res = __ELEM__(x);
    double oracleResult = GetOracle(x);
    double roundedRes = RoundCorrectly(res);
    
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
