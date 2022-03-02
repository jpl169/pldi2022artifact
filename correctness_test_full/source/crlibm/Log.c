#include "crlibm.h"
#define __GEN_ELEM__ rlibm34_log
#define	__ELEM_TF32__ log_rn
#define	__ELEM_BF16__ log_rn
#define __ELEM_FP32_SAME__ 0
#define __ELEM_FP32_RNE__ log_rn
#define __ELEM_FP32_RNA__ log_rn
#define __ELEM_FP32_RNZ__ log_rz
#define __ELEM_FP32_RNP__ log_ru
#define __ELEM_FP32_RNN__ log_rd
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("LogLogFile.txt");
    return 0;
}
