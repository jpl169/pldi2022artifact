#define __GEN_ELEM__ rlibm34_exp
#define	__ELEM_TF32__ exp
#define	__ELEM_BF16__ exp
#define __ELEM_FP32_SAME__ 1
#define __ELEM_FP32_RNE__ exp
#define __ELEM_FP32_RNA__ exp
#define __ELEM_FP32_RNZ__ exp
#define __ELEM_FP32_RNP__ exp
#define __ELEM_FP32_RNN__ exp
#include "LibTestHelper.h"

int main(int argc, char** argv) {
    RunTest("ExpLogFile.txt");
    return 0;
}
