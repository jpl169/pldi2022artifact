#define __ELEM__ rlibm_cosh

#include "LibTestHelper.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  fx.x &= 0x7FFFFFFF;
  if (fx.x <= 968164595) return 1;
  if (fx.x >= 1119016189) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
