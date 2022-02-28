#include "crlibm.h"
#define __GEN_ELEM__ rlibm34_sinh
#define	__ELEM_TF32__ sinh_rn
#define	__ELEM_BF16__ sinh_rn
#define __ELEM_FP32_SAME__ 0
#define __ELEM_FP32_RNE__ sinh_rn
#define __ELEM_FP32_RNA__ sinh_rn
#define __ELEM_FP32_RNZ__ sinh_rz
#define __ELEM_FP32_RNP__ sinh_ru
#define __ELEM_FP32_RNN__ sinh_rd
#include "LibTestHelper.h"

int main(int argc, char** argv) {
    RunTest("SinhLogFile.txt");
    return 0;
}
