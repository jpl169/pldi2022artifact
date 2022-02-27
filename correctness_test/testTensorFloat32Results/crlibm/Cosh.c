#include "crlibm.h"
#define __GEN_ELEM__ rlibm34_cosh
#define	__ELEM_TF32__ cosh_rn
#define	__ELEM_BF16__ cosh_rn
#define __ELEM_FP32_SAME__ 0
#define __ELEM_FP32_RNE__ cosh_rn
#define __ELEM_FP32_RNA__ cosh_rn
#define __ELEM_FP32_RNZ__ cosh_rz
#define __ELEM_FP32_RNP__ cosh_ru
#define __ELEM_FP32_RNN__ cosh_rd
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("CoshLogFile.txt");
    return 0;
}
