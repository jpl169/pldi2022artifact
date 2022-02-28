#include "progressive/float_prog_lib.h"
#define __GEN_ELEM__ rlibm34_sinh
#define	__ELEM_TF32__ rlibm_prog_tf32_sinh
#define	__ELEM_BF16__ rlibm_prog_bf16_sinh
#define __ELEM_FP32_SAME__ 1
#define __ELEM_FP32_RNE__ rlibm_prog_rno_sinh
#define __ELEM_FP32_RNA__ rlibm_prog_rno_sinh
#define __ELEM_FP32_RNZ__ rlibm_prog_rno_sinh
#define __ELEM_FP32_RNP__ rlibm_prog_rno_sinh
#define __ELEM_FP32_RNN__ rlibm_prog_rno_sinh
#include "LibTestHelper.h"

int main(int argc, char** argv) {
    RunTest("SinhLogFile.txt");
    return 0;
}
