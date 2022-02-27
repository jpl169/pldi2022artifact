#define __GEN_ELEM__ rlibm34_sinh
#define	__ELEM_TF32__ sinh
#define	__ELEM_BF16__ sinh
#define __ELEM_FP32_SAME__ 1
#define __ELEM_FP32_RNE__ sinh
#define __ELEM_FP32_RNA__ sinh
#define __ELEM_FP32_RNZ__ sinh
#define __ELEM_FP32_RNP__ sinh
#define __ELEM_FP32_RNN__ sinh
#include "LibTestHelper.h"

int main(int argc, char** argv) {
    RunTest("SinhLogFile.txt");
    return 0;
}
