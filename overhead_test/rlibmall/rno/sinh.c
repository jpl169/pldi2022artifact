#define __ELEM__ rlibm34_sinh
#include "common.h"
#include "rlibm_all.h"
#include "LibTestHelper_bf16.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  fx.x &= 0x7FFFFFFF;
  
  if (fx.x == 0) return 1;
  if (fx.x <= 971544424) return 1;
  if (fx.x >= 1119016189) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
