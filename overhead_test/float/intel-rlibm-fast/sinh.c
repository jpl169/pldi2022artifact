#define __ELEM__ rlibm_fast_sinh

#include "LibTestHelper.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  unsigned sign = fx.x & 0x80000000;
  fx.x &= 0x7FFFFFFF;
  
  if (fx.x <= 971544424) return 1;
  if (fx.x >= 1119016189) return 1;
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
