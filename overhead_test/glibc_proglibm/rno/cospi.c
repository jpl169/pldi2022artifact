#include "progressive/float_prog_lib.h"
#define __ELEM__ rlibm_prog_rno_cospi

#include "LibTestHelper.h"

int additionallyIgnoreThisInput(float x) {
  float_x fX;
  fX.f = x;
  fX.x &= 0x7FFFFFFF;
  
  if (fX.x <= 950204803) return 1;
  if (fX.x >= 0x4b000000) return 1;
  
  // Range Reduction
  double xp = fX.f * 512.0;
  unsigned N = (unsigned)xp;
  unsigned N2 = N & 0xFF;
  unsigned I = (N >> 8) + 1;
  double R, cospiM, sinpiM;
  unsigned long s = (I & 0x2) ? 0x8000000000000000 : 0;
  R = fX.f - N * 0.001953125;
  
  if (R == 0 && N2 == 0) return 1;
  
  return 0;
}

int main(int argc, char** argv) {
    RunTest(argv[1]);
    return 0;
}
