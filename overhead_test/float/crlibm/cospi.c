#define __ELEM__ cospi_rn

#include "LibTestHelper.h"

int additionallyIgnoreThisInput(float x) {
  float_x fX;
  fX.f = x;
  fX.x &= 0x7FFFFFFF;
  
  if (fX.x <= 0x38a2f983) return 1;
  if (fX.x >= 0x4b000000) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
