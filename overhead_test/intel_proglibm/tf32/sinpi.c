#define __ELEM__ rlibm_prog_tf32_sinpi
#include "progressive/float_prog_lib.h"
#include "LibTestHelper_bf16.h"

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
