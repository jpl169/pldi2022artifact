#define __GEN_ELEM__ rlibm34_sinpi
#define	__ELEM_TF32__ sinpi
#define	__ELEM_BF16__ sinpi
#define __ELEM_FP32_SAME__ 1
#define __ELEM_FP32_RNE__ sinpi
#define __ELEM_FP32_RNA__ sinpi
#define __ELEM_FP32_RNZ__ sinpi
#define __ELEM_FP32_RNP__ sinpi
#define __ELEM_FP32_RNN__ sinpi
#include "LibTestHelper.h"

int main(int argc, char** argv) {
    RunTest("SinpiLogFile.txt");
    return 0;
}
