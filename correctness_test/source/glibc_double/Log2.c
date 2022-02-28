#define __GEN_ELEM__ rlibm34_log2
#define	__ELEM_TF32__ log2
#define	__ELEM_BF16__ log2
#define __ELEM_FP32_SAME__ 1
#define __ELEM_FP32_RNE__ log2
#define __ELEM_FP32_RNA__ log2
#define __ELEM_FP32_RNZ__ log2
#define __ELEM_FP32_RNP__ log2
#define __ELEM_FP32_RNN__ log2
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("Log2LogFile.txt");
    return 0;
}
