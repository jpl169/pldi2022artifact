#include "crlibm.h"
#define __GEN_ELEM__ rlibm34_sinpi
#define	__ELEM_TF32__ sinpi_rn
#define	__ELEM_BF16__ sinpi_rn
#define __ELEM_FP32_SAME__ 0
#define __ELEM_FP32_RNE__ sinpi_rn
#define __ELEM_FP32_RNA__ sinpi_rn
#define __ELEM_FP32_RNZ__ sinpi_rz
#define __ELEM_FP32_RNP__ sinpi_ru
#define __ELEM_FP32_RNN__ sinpi_rd
#include "LibTestHelper.h"

int main(int argc, char** argv) {
    RunTest("SinpiLogFile.txt");
    return 0;
}
