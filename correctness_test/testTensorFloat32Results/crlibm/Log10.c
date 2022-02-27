#include "crlibm.h"
#define __GEN_ELEM__ rlibm34_log10
#define	__ELEM_TF32__ log10_rn
#define	__ELEM_BF16__ log10_rn
#define __ELEM_FP32_SAME__ 0
#define __ELEM_FP32_RNE__ log10_rn
#define __ELEM_FP32_RNA__ log10_rn
#define __ELEM_FP32_RNZ__ log10_rz
#define __ELEM_FP32_RNP__ log10_ru
#define __ELEM_FP32_RNN__ log10_rd
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("Log10LogFile.txt");
    return 0;
}
