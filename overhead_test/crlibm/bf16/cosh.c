#define __ELEM__ cosh_rn
#include "crlibm.h"
#include "LibTestHelper_bf16.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  fx.x &= 0x7FFFFFFF;
  if (fx.x <= 0x3db40000) return 1;
  if (fx.x >= 0x42b2e000) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
