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

enum RoundMode my_rnd_modes[5] = {RNE, RNN, RNP, RNZ, RNA};

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
    #if (__ELEM_FP32_SAME__ == 1)
      double res = __ELEM_FP32_RNE__(fx.f);

      for (int rnd_index = 0; rnd_index < 5; rnd_index++) {
        double oracleResult = RoundDoubleToF8N(orc, 32, my_rnd_modes[rnd_index]);
        double roundedRes = RoundDoubleToF8N(res, 32, my_rnd_modes[rnd_index]);
        
        if (oracleResult != oracleResult && roundedRes != roundedRes) continue;
        if (oracleResult != roundedRes) {
          if (rnd_index == 0) wrongCounts[1]++;
          wrongCounts[2]++;
        }
      }
    #else
      // This is crlibm... Must do it separately
      // RNE
      double res = __ELEM_FP32_RNE__(fx.f);
      double oracleResult = RoundDoubleToF8N(orc, 32, RNE);
      double roundedRes = RoundDoubleToF8N(res, 32, RNE);
      if (oracleResult != oracleResult && roundedRes != roundedRes) continue;
      if (oracleResult != roundedRes) {
        wrongCounts[1]++;
        wrongCounts[2]++;
      }
      // RNA
      res = __ELEM_FP32_RNA__(fx.f);
      oracleResult = RoundDoubleToF8N(orc, 32, RNA);
      roundedRes = RoundDoubleToF8N(res, 32, RNA);
      if (oracleResult != oracleResult && roundedRes != roundedRes) continue;
      if (oracleResult != roundedRes) wrongCounts[2]++;

      // RNZ
      res = __ELEM_FP32_RNZ__(fx.f);
      oracleResult = RoundDoubleToF8N(orc, 32, RNZ);
      roundedRes = RoundDoubleToF8N(res, 32, RNZ);
      if (oracleResult != oracleResult && roundedRes != roundedRes) continue;
      if (oracleResult != roundedRes) wrongCounts[2]++;

      // RNP
      res = __ELEM_FP32_RNP__(fx.f);
      oracleResult = RoundDoubleToF8N(orc, 32, RNP);
      roundedRes = RoundDoubleToF8N(res, 32, RNP);
      if (oracleResult != oracleResult && roundedRes != roundedRes) continue;
      if (oracleResult != roundedRes) wrongCounts[2]++;

      // RNN
      res = __ELEM_FP32_RNN__(fx.f);
      oracleResult = RoundDoubleToF8N(orc, 32, RNN);
      roundedRes = RoundDoubleToF8N(res, 32, RNN);
      if (oracleResult != oracleResult && roundedRes != roundedRes) continue;
      if (oracleResult != roundedRes) wrongCounts[2]++;
    #endif
  }
  
  for (int i = 0; i < 3; i++) {
    if (wrongCounts[i] == 0) printf("\033[0;32mo\033[0m");
    else printf("\033[0;31mx\033[0m");
    if (i < 2) printf("     ");
    else printf("      ");
  }
}

void RunTest(char* logFile) {
  RunTestForExponent();
}
