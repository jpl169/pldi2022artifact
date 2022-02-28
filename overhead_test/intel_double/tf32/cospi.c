#define __ELEM__ cospi

#include "LibTestHelper_tf32.h"

int additionallyIgnoreThisInput(float x) {
  float_x fX;
  fX.f = x;
  fX.x &= 0x7FFFFFFF;
  
  if (fX.x <= 0x3be66000) return 1;
  if (fX.x >= 0x44800000) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
