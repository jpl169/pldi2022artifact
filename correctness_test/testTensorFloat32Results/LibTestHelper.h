#ifdef __INTEL_COMPILER
#include "mathimf.h"
#else
#define _GNU_SOURCE
#include "math.h"
#endif

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>
#include <unistd.h>
#include "rlibm_all.h"
#include "rounding.h"

void RunTestForExponent() {
  unsigned long wrongCounts = 0;
  
  floatX fx;
  
  for (unsigned long count = 0x0; count < 0x80000; count++) {
    fx.x = (count << 13);
    double orc = __GEN_ELEM__(fx.f);
    double res = __ELEM__(fx.f);
    
    double oracleResult = RoundDoubleToF8N(orc, 19, RNE);
    double roundedRes = RoundDoubleToF8N(res, 19, RNE);
    
    if (oracleResult != oracleResult && roundedRes != roundedRes) continue;
    if (oracleResult != roundedRes) wrongCounts++;
  }
  
  if (wrongCounts == 0) printf("\033[0;32mo\033[0m");
  else printf("\033[0;31mx\033[0m");
}

void RunTest(char* logFile) {
  RunTestForExponent();
}
