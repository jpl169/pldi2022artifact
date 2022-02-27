#include "crlibm.h"
#define __GEN_ELEM__ rlibm34_log2
#define	__ELEM_TF32__ log2_rn
#define	__ELEM_BF16__ log2_rn
#define __ELEM_FP32_SAME__ 0
#define __ELEM_FP32_RNE__ log2_rn
#define __ELEM_FP32_RNA__ log2_rn
#define __ELEM_FP32_RNZ__ log2_rz
#define __ELEM_FP32_RNP__ log2_ru
#define __ELEM_FP32_RNN__ log2_rd
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("Log2LogFile.txt");
    return 0;
}
