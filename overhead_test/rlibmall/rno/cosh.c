#define __ELEM__ rlibm34_cosh
#include "common.h"
#include "rlibm_all.h"
#include "LibTestHelper_rno.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  fx.x &= 0x7FFFFFFF;
  // Take care of special cases
  if (fx.x <= 973078527) return 1;
  if (fx.x >= 1119016189) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
