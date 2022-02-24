#define __ELEM__ rlibm34_log10

#include "LibTestHelper.h"

int additionallyIgnoreThisInput(float x) {
  float_x fix, fit;
  fix.f = x;
  int m = 0;
  
  if (fix.x < 0x800000 || fix.x >= 0x7F800000) {
    if ((fix.x & 0x7FFFFFFF) == 0) return 1;
    if (fix.x > 0x7FFFFFFF) return 1;
    if (fix.x >= 0x7F800000) return 1;
  }
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
