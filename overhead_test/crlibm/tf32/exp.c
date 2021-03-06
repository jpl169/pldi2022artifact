#define __ELEM__ exp_rn
#include "common.h"
#include "crlibm.h"
#include "LibTestHelper_tf32.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  
  if (0x42b17218 <= fx.x && fx.x <= 0xb3000000) return 1;
  if (fx.x <= 0x337fffff) return 1;
  if (fx.x >= 0xc2cff218) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
