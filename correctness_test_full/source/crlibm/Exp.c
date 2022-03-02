#include "crlibm.h"
#define __GEN_ELEM__ rlibm34_exp
#define	__ELEM_TF32__ exp_rn
#define	__ELEM_BF16__ exp_rn
#define __ELEM_FP32_SAME__ 0
#define __ELEM_FP32_RNE__ exp_rn
#define __ELEM_FP32_RNA__ exp_rn
#define __ELEM_FP32_RNZ__ exp_rz
#define __ELEM_FP32_RNP__ exp_ru
#define __ELEM_FP32_RNN__ exp_rd
#include "LibTestHelper.h"

int main(int argc, char** argv) {
    RunTest("ExpLogFile.txt");
    return 0;
}
