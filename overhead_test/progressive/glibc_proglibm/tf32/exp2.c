#define __ELEM__ rlibm_prog_tf32_exp2

#include "LibTestHelper.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  
  if (0x43000000 <= fx.x && fx.x <= 0xb338aa3b) return 1;
  if (fx.x <= 0x33b8aa3a) return 1;
  if (fx.x >= 0xc3160000) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
