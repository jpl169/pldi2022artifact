#define __ELEM__ rlibm_prog_rno_log
#include "progressive/float_prog_lib.h"
#include "LibTestHelper_bf16.h"

int additionallyIgnoreThisInput(float x) {
  float_x fix, fit;
  fix.f = x;
  int m = 0;
  
  // Special case for RO:
  if (x == 1.0) return 1;
  
  if (fix.x < 0x800000 || fix.x >= 0x7F800000) {
    if ((fix.x & 0x7FFFFFFF) == 0) return 1;
    if (fix.x > 0x7F800000) return 1;
    if (fix.x == 0x7F800000) return 1;
  }
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
