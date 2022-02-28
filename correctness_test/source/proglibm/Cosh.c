#include "progressive/float_prog_lib.h"
#define __GEN_ELEM__ rlibm34_cosh
#define	__ELEM_TF32__ rlibm_prog_tf32_cosh
#define	__ELEM_BF16__ rlibm_prog_bf16_cosh
#define __ELEM_FP32_SAME__ 1
#define __ELEM_FP32_RNE__ rlibm_prog_rno_cosh
#define __ELEM_FP32_RNA__ rlibm_prog_rno_cosh
#define __ELEM_FP32_RNZ__ rlibm_prog_rno_cosh
#define __ELEM_FP32_RNP__ rlibm_prog_rno_cosh
#define __ELEM_FP32_RNN__ rlibm_prog_rno_cosh
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("CoshLogFile.txt");
    return 0;
}
