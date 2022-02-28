#include "progressive/float_prog_lib.h"
#define __ELEM__ rlibm_prog_tf32_exp10

#include "LibTestHelper_tf32.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  
  if (0x421a209b <= fx.x && fx.x <= 0xb25e5bd8) return 1;
  if (fx.x <= 0x32de5bd8) return 1;
  if (fx.x >= 0xc2349e36) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
