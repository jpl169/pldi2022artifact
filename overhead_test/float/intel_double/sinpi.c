#define __ELEM__ sinpi

#include "LibTestHelper.h"

int additionallyIgnoreThisInput(float x) {
  float_x fX;
  fX.f = x;
  unsigned s = fX.x & 0x80000000;
  fX.x &= 0x7FFFFFFF;
  
  if (fX.x <= 0x33fc1537) return 1;
  if (fX.x >= 0x4b000000) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
