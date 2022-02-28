#define __GEN_ELEM__ rlibm34_cospi
#define	__ELEM_TF32__ cospi
#define	__ELEM_BF16__ cospi
#define __ELEM_FP32_SAME__ 1
#define __ELEM_FP32_RNE__ cospi
#define __ELEM_FP32_RNA__ cospi
#define __ELEM_FP32_RNZ__ cospi
#define __ELEM_FP32_RNP__ cospi
#define __ELEM_FP32_RNN__ cospi
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("CospiLogFile.txt");
    return 0;
}
