#include "progressive/float_prog_lib.h"
#define __ELEM__ rlibm_prog_rno_sinh

#include "LibTestHelper_rno.h"

int additionallyIgnoreThisInput(float x) {
  float_x fx;
  fx.f = x;
  fx.x &= 0x7FFFFFFF;
  
  if (fx.x == 0) return 1;
  if (fx.x <= 971544424) return 1;
  if (fx.x >= 1119016189) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
