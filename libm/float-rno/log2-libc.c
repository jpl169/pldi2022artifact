#include "float-rno/float_rno_lib.h"
#include "float_lib.h"
#include "float-rno/log2.h"
#include <math.h>

double rlibm_libc_rno_log2(float x) {
  float_x fix, fit, spec;
  fix.f = x;
  int m = 0;

  if (fix.x < 0x800000 || fix.x >= 0x7F800000) {
    if ((fix.x & 0x7FFFFFFF) == 0) { // log(+/-0) = -infty
      fix.x = 0xFF800000;
      return fix.f;
    }
    
    if (fix.x > 0x7FFFFFFF) { // Log(-val) = NaN
      return (x - x) / 0;
        
    }
    
    if (fix.x >= 0x7F800000) {
      return x + x;
    }

    // Special case when we have denormal input and exact result
    int exp;
    spec.f = frexpf(fix.f, &exp);
    if (spec.x == 0x3f000000) return (double)(exp - 1);

    fix.f *= 8.388608e+06;
    m -= 23;
  }
  
  m += fix.x >> 23;
  m -= 127;
  fix.x &= 0x007FFFFF;
  
  if (fix.x == 0) {
    return (double)m;
  }
  
  fix.x |= 0x3F800000;
  
  fit.x = fix.x & 0x007F0000;
  int FIndex = fit.x >> 16;
  fit.x |= 0x3F800000;
  
  double f = fix.f - fit.f;
  f *= __log_oneByF[FIndex];

#define C1 1.4426950408936214387267682468518614768981933593750000000000000000000000e+00
#define C2 -7.2134752892795794831926059487159363925457000732421875000000000000000000e-01 
#define C3 4.8090233829603024062748772848863154649734497070312500000000000000000000e-01
#define C4 -3.6137987525825709944626851211069151759147644042968750000000000000000000e-01 
#define C5 3.2929554893140711158139311010017991065979003906250000000000000000000000e-01

  double y = 0.0;

  double extra_factor = m + __log2_lut[FIndex];

  double t1 = fma(f, C5, C4);
  double t2 = fma(f, t1, C3);
  double t3 = fma(f, t2, C2);
  double t4 = fma(f, t3, C1);

  return fma(f, t4, extra_factor);
}
