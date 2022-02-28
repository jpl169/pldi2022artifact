#define __GEN_ELEM__ rlibm34_exp2
#define	__ELEM_TF32__ exp2
#define	__ELEM_BF16__ exp2
#define __ELEM_FP32_SAME__ 1
#define __ELEM_FP32_RNE__ exp2
#define __ELEM_FP32_RNA__ exp2
#define __ELEM_FP32_RNZ__ exp2
#define __ELEM_FP32_RNP__ exp2
#define __ELEM_FP32_RNN__ exp2
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("Exp2LogFile.txt");
    return 0;
}
