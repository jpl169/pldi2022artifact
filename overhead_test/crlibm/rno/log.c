#define __ELEM__ log_rn
#include "common.h"
#include "crlibm.h"
#include "LibTestHelper_rno.h"

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
