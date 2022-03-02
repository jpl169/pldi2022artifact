#define __ELEM__ rlibm_prog_rno_sinpi
#include "progressive/float_prog_lib.h"
#include "LibTestHelper_rno.h"

int additionallyIgnoreThisInput(float x) {
  float_x fX;
  fX.f = x;
  unsigned long s = (fX.x & 0x80000000) == 0 ? 0x0 : 0x8000000000000000;
  fX.x &= 0x7FFFFFFF;
  
  if (fX.x <= 872158519) return 1;
  
  if (fX.x >= 0x4b000000) return 1;
  
  double xp = fX.f * 512;
  unsigned N = (unsigned)xp;
  unsigned N2 = N & 0xFF;
  unsigned int AI = N >> 8;
  double R = fX.f - N * 0.001953125;
  if (AI & 0x2) s ^= 0x8000000000000000;
  
  // More special cases when sinpi(x) is exactly representable
  if (R == 0 && N2 == 0) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
