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
  unsigned long wrongCounts[3];
  for (int i = 0; i < 3; i++) wrongCounts[i] = 0;
  
  floatX fx;
  
  for (unsigned long count = 0x0; count < 0x100000000; count += 0x80) {
    fx.x = count;
    double orc = __GEN_ELEM__(fx.f);

    // Check bfloat16 results
    if ((count & 0xFFFF) == 0) {
      double res = __ELEM_BF16__(fx.f);
      double oracleResult = RoundDoubleToF8N(orc, 16, RNE);
      double roundedRes = RoundDoubleToF8N(res, 16, RNE);
      
      if (oracleResult != oracleResult && roundedRes != roundedRes) continue;
      if (oracleResult != roundedRes) wrongCounts[0]++;
    }

    // Check tensorfloat32 results
    if ((count & 0x1FFF) == 0) {
      double res = __ELEM_TF32__(fx.f);
      double oracleResult = RoundDoubleToF8N(orc, 19, RNE);
      double roundedRes = RoundDoubleToF8N(res, 19, RNE);
      
      if (oracleResult != oracleResult && roundedRes != roundedRes) continue;
      if (oracleResult != roundedRes) wrongCounts[0]++;
    }

    // Check float results
    double res = __ELEM_FP32_RNE__(fx.f);
    double oracleResult = RoundDoubleToF8N(orc, 32, RNE);
    double roundedRes = RoundDoubleToF8N(res, 32, RNE);
    if (oracleResult != oracleResult && roundedRes != roundedRes) continue;
    if (oracleResult != roundedRes) {
      wrongCounts[1]++;
      wrongCounts[2]++;
    }
  }
  
  for (int i = 0; i < 3; i++) {
    if (wrongCounts[i] == 0) printf("\033[0;32mo\033[0m");
    else printf("\033[0;31mx\033[0m");
    if (i < 2) printf("   ");
  }
}

void RunTest(char* logFile) {
  RunTestForExponent();
}
