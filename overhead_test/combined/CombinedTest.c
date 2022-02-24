#define _GNU_SOURCE
#include <stdio.h>
#include "float34RO_math.h"
#include "progressive/float_prog_lib.h"
#include "math.h"
#include <x86intrin.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <string.h>
#include <unistd.h>

#define RAND_COUNT 1000
#define TOTAL_RUN 50000000

typedef enum {
  LOG,
  LOG2,
  LOG10,
  EXP,
  EXP2,
  EXP10,
  COSPI,
  SINPI,
  COSH,
  SINH
} rlibm_func;

double (*f1)(float);
double (*f2)(float);


void set_function_ptr(rlibm_func val){

  printf("rlibm_func is %d\n", val);
  switch (val){

  case LOG:
    f1 = rlibm34_log;
    f2 = rlibm_prog_rno_log;
    break;
  case LOG2:
    f1 = rlibm34_log2;
    f2 = rlibm_prog_rno_log2;
    break;

  case LOG10:
    f1 = rlibm34_log10;
    f2 = rlibm_prog_rno_log10;
    break;

  case EXP:
    f1 = rlibm34_exp;
    f2 = rlibm_prog_rno_exp;
    break;

  case EXP2:
    f1 = rlibm34_exp2;
    f2 = rlibm_prog_rno_exp2;
    break;

  case EXP10:
    f1 = rlibm34_exp10;
    f2 = rlibm_prog_rno_exp10;
    break;

  case COSPI:
    f1 = rlibm34_cospi;
    f2 = rlibm_prog_rno_cospi;
    break;

  case SINPI:
    f1 = rlibm34_sinpi;
    f2 = rlibm_prog_rno_sinpi;
    break;
    
  case COSH:
    f1 = rlibm34_cosh;
    f2 = rlibm_prog_rno_cosh;
    break;

  case SINH:
    f1 = rlibm34_sinh;
    f2 = rlibm_prog_rno_sinh;
    break;
  }

}


int main(int argc, char** argv){

  if(argc !=2 ){
    printf("enter the function to test.\n");
    printf("For LOG,   enter %d\n", LOG);
    printf("For LOG2,  enter %d\n", LOG2);
    printf("For LOG10, enter %d\n", LOG10);
    printf("For EXP,   enter %d\n", EXP);
    printf("For EXP2,  enter %d\n", EXP2);
    printf("For EXP10, enter %d\n", EXP10);
    printf("For COSPI, enter %d\n", COSPI);
    printf("For SINPI, enter %d\n", SINPI);
    printf("For COSH,  enter %d\n", COSH);
    printf("For SINH,  enter %d\n", SINH);
    exit(0);
  }
  float compare_to;
  float_x xbase;
  float x;

  while (1) {
    unsigned v = rand();
    float f = *(float *)&v;
    if (f != f) continue;
    compare_to = f;
    break;
  }

#if 0  
  float* rinps = malloc(RAND_COUNT * sizeof(float));
  
  for (int i = 0; i < RAND_COUNT; i++) {
    while (1) {
      unsigned v = rand();
      float f = *(float *)&v;
      if (f != f) continue;
      if (f <= 0.0) continue;
      rinps[i] = f;
      break;
    }
  }

  for (int i = 0; i < RAND_COUNT; i++) {
    someAvg += rinps[i] / RAND_COUNT;
  }
#endif
  
  //  int econfig = atoi(argv[1]);

  unsigned int dummy;

  for(rlibm_func rf  = LOG; rf <= SINH; rf++){
    
    set_function_ptr(rf);
    unsigned long rlibm_rno_t1 = 0, rlibm_rno_t2 = 0;
    unsigned long rlibm_prog_t1 = 0, rlibm_prog_t2 = 0;
    
    unsigned long rlibm_rno_total = 0;
    unsigned long rlibm_prog_total = 0;
    
    double rlibm_rno_res = 0.0;
    double rlibm_prog_res = 0.0;
    unsigned long count = 0;
    unsigned long someAccumulator = 0;

    do{
      rlibm_rno_t1 = __rdtscp(&dummy);
      for (count = 0x0; count < 0x100000000; count++) {
	xbase.x = count;
	x = xbase.f;
	rlibm_rno_res = f1(x);
	if (compare_to != rlibm_rno_res) someAccumulator++;
      }
      rlibm_rno_t2 = __rdtscp(&dummy);
      
    }while(rlibm_rno_t2 < rlibm_rno_t1); 
    
    rlibm_rno_total = (rlibm_rno_t2 - rlibm_rno_t1);
    printf("rno cycle = %lu\n", rlibm_rno_total);

    do{
      rlibm_prog_t1 = __rdtscp(&dummy);
      for (count = 0x0; count < 0x100000000; count++) {
	xbase.x = count;
	x = xbase.f;
	rlibm_prog_res = f2(x);
	if (compare_to != rlibm_prog_res) someAccumulator++;
      }
      rlibm_prog_t2 = __rdtscp(&dummy);
    }while(rlibm_prog_t2 < rlibm_prog_t1);
    
    rlibm_prog_total = (rlibm_prog_t2 - rlibm_prog_t1);
    printf("accum = %lu\n", someAccumulator);
    printf("prog cycle = %lu\n", rlibm_prog_total);

    
    


    
    printf("speedup = %lf\n", 1.0 * rlibm_rno_total/rlibm_prog_total);
    
  }
  return 0;
}
