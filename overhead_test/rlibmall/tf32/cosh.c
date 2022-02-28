#define __ELEM__ rlibm34_cosh
#include "common.h"
#include "rlibm_all.h"
#include "LibTestHelper_bf16.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  fx.x &= 0x7FFFFFFF;
  
  if (fx.x <= 0x3cffe000) return 1;
  if (fx.x >= 0x42b2e000) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
