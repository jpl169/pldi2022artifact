#define _GNU_SOURCE
#include "common.h"
#if __APPLE__
    #define	__ELEM__ __exp10
#else
    #define	__ELEM__ exp10
#endif

#include <math.h>

#include "LibTestHelper_bf16.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  
  // Take care of special cases
  if (0x421a209b <= fx.x && fx.x <= 0xb25e5bd8) return 1;
  if (fx.x <= 0x32de5bd8) return 1;
  if (fx.x >= 0xc2349e36) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
