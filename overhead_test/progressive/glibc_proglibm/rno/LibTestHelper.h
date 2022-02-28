#define _GNU_SOURCE
#include <stdio.h>
#include "progressive/float_prog_lib.h"
#include <math.h>
#include <x86intrin.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

int additionallyIgnoreThisInput(float x);

void RunTest(char* FileName) {
  unsigned long time_total = 0, count = 0;
  unsigned long time_t1, time_t2;
  double res;
  unsigned int dummy;
  for (count = 0x0; count < 0x100000000; count++) {
    float_x xbase;
    xbase.x = count;
    float x = xbase.f;
    #ifdef IGNORE_SPECIAL_INPUT
    if (additionallyIgnoreThisInput(x)) continue;
    #endif
    
    do {
      time_t1 = __rdtscp(&dummy);
      res = __ELEM__(x);
      time_t2 = __rdtscp(&dummy);
    } while (time_t1 >= time_t2);
    time_total += (time_t2 - time_t1);
  }
  
  printf("total cycle  = %lu\n", time_total);
}
