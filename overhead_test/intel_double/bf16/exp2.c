#define __ELEM__ exp2
#include "common.h"

#include "LibTestHelper_bf16.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  
  if (x <= -150) return 1;
  if (-4.2995662141720458748750388622283935546875e-08 <= x &&
      x <= 8.59913171780135598964989185333251953125e-08)
    return 1;
  if (128 <= x) return 1;
  if ((fx.x & 0x7FFFFFFF) > 0x7F800000) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
