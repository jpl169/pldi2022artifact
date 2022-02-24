#include <math.h>
#include "progressive/float_prog_lib.h"
#include "progressive/expconsts.h"

double rlibm_prog_bf16_exp2(float x) {
  float_x fx;
  fx.f = x;
  
  if (0x43000000 <= fx.x && fx.x <= 0xb338aa3b) {
    if (fx.x < 0x80000000) {
      if (fx.x <= 0x7F800000) return 1.0/0.0;
      return 0.0 / 0.0;
    }
    return 1.0;
  }
  
  if (fx.x <= 0x33b8aa3a) return 1.0;
  
  if (fx.x >= 0xc3160000) {
    if (fx.x <= 0xFF800000) return 0.0;
    return 0.0 / 0.0;
  }
    
  // Perform range reduction
  double xp = x * 64;
  int N = (int)xp;
  int N2 = N % 64;
  if (N2 < 0) N2 += 64;
  int N1 = N - N2;
  
  int M = N1 / 64;
  int J = N2;
  double R = x - N * 0.015625;
  
  double y = 2.4022650700583483840411247456358978524804115295410156250000000000000000e-01; // bf16
  y *= R;
  y += 6.9314718055997226464626237429911270737648010253906250000000000000000000e-01;
  y *= R;
  y += 9.9999999999999988897769753748434595763683319091796875000000000000000000e-01;

  // Perform output compensation
  return y * ldexp(exp2JBy64[J], M);
}
