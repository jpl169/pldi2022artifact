#define __ELEM__ rlibm34_sinpi
#include "common.h"
#include "rlibm_all.h"
#include "LibTestHelper_tf32.h"

int additionallyIgnoreThisInput(float x) {
  float_x fX;
  fX.f = x;
  unsigned s = fX.x & 0x80000000;
  fX.x &= 0x7FFFFFFF;

  if (fX.x <= 0x3a9a6000) return 1;
  if (fX.x >= 0x44800000) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
