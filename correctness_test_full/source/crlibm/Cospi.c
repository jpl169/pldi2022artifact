#include "crlibm.h"
#define __GEN_ELEM__ rlibm34_cospi
#define	__ELEM_TF32__ cospi_rn
#define	__ELEM_BF16__ cospi_rn
#define __ELEM_FP32_SAME__ 0
#define __ELEM_FP32_RNE__ cospi_rn
#define __ELEM_FP32_RNA__ cospi_rn
#define __ELEM_FP32_RNZ__ cospi_rz
#define __ELEM_FP32_RNP__ cospi_ru
#define __ELEM_FP32_RNN__ cospi_rd
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("CospiLogFile.txt");
    return 0;
}
