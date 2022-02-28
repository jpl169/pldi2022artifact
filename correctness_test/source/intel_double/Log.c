#define __GEN_ELEM__ rlibm34_log
#define	__ELEM_TF32__ log
#define	__ELEM_BF16__ log
#define __ELEM_FP32_SAME__ 1
#define __ELEM_FP32_RNE__ log
#define __ELEM_FP32_RNA__ log
#define __ELEM_FP32_RNZ__ log
#define __ELEM_FP32_RNP__ log
#define __ELEM_FP32_RNN__ log
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("LogLogFile.txt");
    return 0;
}
