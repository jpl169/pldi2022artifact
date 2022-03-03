#include <stdio.h>
#include <stdlib.h>
#include "progressive/float_prog_lib.h"

int main(int argc, char** argv) {
  // Compute e^0.005 / sinpi(0.75), but in float for each computation
  // rlibm34 functions produce double value. Make sure to round to the desired
  // representation.
  float e0p005 = rlibm_prog_rno_exp(0.005f);
  float sinpi0p75 = rlibm_prog_rno_sinpi(0.75f);
  printf("answer = %.50e\n", e0p005 / sinpi0p75);
  return 0;
}
