#include "progressive/float_prog_lib.h"
#define __GEN_ELEM__ rlibm34_log10
#define	__ELEM_TF32__ rlibm_prog_tf32_log10
#define	__ELEM_BF16__ rlibm_prog_bf16_log10
#define __ELEM_FP32_SAME__ 1
#define __ELEM_FP32_RNE__ rlibm_prog_rno_log10
#define __ELEM_FP32_RNA__ rlibm_prog_rno_log10
#define __ELEM_FP32_RNZ__ rlibm_prog_rno_log10
#define __ELEM_FP32_RNP__ rlibm_prog_rno_log10
#define __ELEM_FP32_RNN__ rlibm_prog_rno_log10
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("Log10LogFile.txt");
    return 0;
}
