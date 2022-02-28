#define __ELEM__ rlibm_prog_tf32_sinh

#include "LibTestHelper_tf32.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  unsigned long sign = (fx.x & 0x80000000) == 0 ? 0x0 : 0x8000000000000000;
  fx.x &= 0x7FFFFFFF;
  
  // Take care of special cases
  if (fx.x <= 0x3d388000) return 1;
  if (fx.x >= 0x42b2e000) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
