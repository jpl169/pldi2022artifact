#ifdef __INTEL_COMPILER
#include "mathimf.h"
#else
#define _GNU_SOURCE
#include "math.h"
#endif

#include <stdio.h>
#include <x86intrin.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#define TOTAL_RUN 50000000

int additionallyIgnoreThisInput(float x);

void RunTest(char* FileName) {
  unsigned long time_total = 0, count = 0;
  unsigned long time_t1, time_t2;
  unsigned long accum;
  double res;
  unsigned int dummy;
  
  for (int i = 0; i < TOTAL_RUN / (2 << 19); i++) {
    for (count = 0x0; count < (2 << 19); count++) {
      float_x xbase;
      xbase.x = (count << 13);
      float x = xbase.f;
      #ifdef IGNORE_SPECIAL_INPUT
      if (additionallyIgnoreThisInput(x)) continue;
      #endif
      
      do {
        time_t1 = __rdtscp(&dummy);
        res = __ELEM__(x);
        time_t2 = __rdtscp(&dummy);
      } while (time_t1 >= time_t2);
      if (res == 0.0) accum += 1;
      time_total += (time_t2 - time_t1);
    }
  }
  
  FILE* output = fopen(FileName, "w");
  fprintf(output, "%lu\n", time_total);
  fprintf(output, "%lu\n", accum);
  fclose(output);
}
