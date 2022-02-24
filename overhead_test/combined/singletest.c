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
#define ARRAY_SIZE 1024 * 3

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

unsigned long run_function( double (*f)(float), double compare_to){

  unsigned int dummy;
  unsigned long start=0, end  = 0;
  float x;
  float_x xbase;
  unsigned long count = 0;
  unsigned long some_accumulator = 0;
  unsigned long total_cycles = 0;
  double res = 0.0;

  for(unsigned long outer = 0; outer < 0x10000; outer++){
    do{
      count = outer * 0x10000;
      start = __rdtscp(&dummy);
      for (; count < (outer +1) * 0x100000; count++) {
	xbase.x = count;
	x = xbase.f;
	res = f(x);
	if (compare_to != res) some_accumulator++;	
      }
      end = __rdtscp(&dummy);	      
    }while(end < start);
    total_cycles += (end - start);
    fprintf(stderr, "complete outer iterations=%lu\n", outer);
  }
  //  printf("Total cycles = %lu\n", total_cycles);
  printf("dummy accumulator = %lu\n", some_accumulator);
  return total_cycles;
}

char* fname(rlibm_func rf){

  switch(rf){
  case LOG:
    return "LOG";
  case LOG2:
    return "LOG2";
  case LOG10:
    return "LOG10";
  case EXP:
    return "EXP";
  case EXP2:
    return "EXP2";
  case EXP10:
    return "EXP10";
  case COSPI:
    return "COSPI";
  case SINPI:
    return "SINPI";
  case COSH:
    return "COSH";
  case SINH:
    return "SINH";
  }
  return NULL;
}


int main(int argc, char** argv){

  printf(" LOG,    %d\n", LOG);
  printf(" LOG2,   %d\n", LOG2);
  printf(" LOG10,  %d\n", LOG10);
  printf(" EXP,    %d\n", EXP);
  printf(" EXP2,   %d\n", EXP2);
  printf(" EXP10,  %d\n", EXP10);
  printf(" COSPI,  %d\n", COSPI);
  printf(" SINPI,  %d\n", SINPI);
  printf(" COSH,   %d\n", COSH);
  printf(" SINH,   %d\n", SINH);

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
  unsigned long my_array = malloc(sizeof(unsigned long) * ARRAY_SIZE);
  for(int i = 0; i < ARRAY_SIZE; i++){
    my_array[i] = rand();
  }
#endif  

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


  for(rlibm_func rf  = LOG; rf <= SINH; rf++){

    set_function_ptr(rf);

    unsigned long rlibm_rno = run_function(f1, compare_to);
    unsigned long rlibm_prog = run_function(f2, compare_to);


    printf("Function is %s\n", fname(rf));
    printf("RLIBM-ALL cycles = %lu\n", rlibm_rno);
    printf("RLIBM-PROG cycles = %lu\n", rlibm_prog);    
    printf("speedup = %lf\n", 1.0 * rlibm_rno/rlibm_prog);    
  }
  return 0;
}
