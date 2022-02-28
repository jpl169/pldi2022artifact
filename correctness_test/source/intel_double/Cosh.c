#define __GEN_ELEM__ rlibm34_cosh
#define	__ELEM_TF32__ cosh
#define	__ELEM_BF16__ cosh
#define __ELEM_FP32_SAME__ 1
#define __ELEM_FP32_RNE__ cosh
#define __ELEM_FP32_RNA__ cosh
#define __ELEM_FP32_RNZ__ cosh
#define __ELEM_FP32_RNP__ cosh
#define __ELEM_FP32_RNN__ cosh
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("CoshLogFile.txt");
    return 0;
}
