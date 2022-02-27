#include "progressive/float_prog_lib.h"
#define __GEN_ELEM__ rlibm34_cospi
#define	__ELEM__ rlibm_prog_tf32_cospi
#include "LibTestHelper.h"

int IsSpecialCase(float x, double* specCaseRes) {
  if (x < 0) x = -x;
  double reduced = fmod(x, 2.0);
  
  if (reduced == 0.0) {
    *specCaseRes = 1.0;
    return 1;
  }
  else if (reduced == 0.5) {
    *specCaseRes = 0.0;
    return 1;
  }
  else if (reduced == 1.0) {
    *specCaseRes = -1.0;
    return 1;
  }
  else if (reduced == 1.5) {
    *specCaseRes = 0.0;
    return 1;
  }
  
  return 0;
}

int main(int argc, char** argv) {

    RunTest("CoshLogFile.txt");
    return 0;
}
