#include "progressive/float_prog_lib.h"
#define __ELEM__ rlibm_prog_bf16_sinh

#include "LibTestHelper_bf16.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  unsigned long sign = (fx.x & 0x80000000) == 0 ? 0x0 : 0x8000000000000000;
  fx.x &= 0x7FFFFFFF;
  
  // Take care of special cases
  if (fx.x <= 0x3de80000) return 1;
  
  if (fx.x >= 0x42b2e000) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
