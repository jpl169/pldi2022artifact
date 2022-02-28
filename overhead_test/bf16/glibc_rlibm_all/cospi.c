#define __ELEM__ rlibm34_cospi

#include "LibTestHelper.h"

int additionallyIgnoreThisInput(float x) {
  float_x fX;
  fX.f = x;
  fX.x &= 0x7FFFFFFF;
  
  if (fX.x <= 0x3ca20000) return 1;
  if (fX.x >= 0x43000000) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
