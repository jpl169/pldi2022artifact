#include "progressive/float_prog_lib.h"
#define __GEN_ELEM__ rlibm34_cospi
#define	__ELEM_TF32__ rlibm_prog_tf32_cospi
#define	__ELEM_BF16__ rlibm_prog_bf16_cospi
#define __ELEM_FP32_SAME__ 1
#define __ELEM_FP32_RNE__ rlibm_prog_rno_cospi
#define __ELEM_FP32_RNA__ rlibm_prog_rno_cospi
#define __ELEM_FP32_RNZ__ rlibm_prog_rno_cospi
#define __ELEM_FP32_RNP__ rlibm_prog_rno_cospi
#define __ELEM_FP32_RNN__ rlibm_prog_rno_cospi
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
