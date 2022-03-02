#define __GEN_ELEM__ rlibm34_exp10
#if __APPLE__
    #define	__ELEM_TF32__ __exp10
    #define	__ELEM_BF16__ __exp10
    #define __ELEM_FP32_SAME__ 1
    #define __ELEM_FP32_RNE__ __exp10
    #define __ELEM_FP32_RNA__ __exp10
    #define __ELEM_FP32_RNZ__ __exp10
    #define __ELEM_FP32_RNP__ __exp10
    #define __ELEM_FP32_RNN__ __exp10
#else
    #define	__ELEM_TF32__ exp10
    #define	__ELEM_BF16__ exp10
    #define __ELEM_FP32_SAME__ 1
    #define __ELEM_FP32_RNE__ exp10
    #define __ELEM_FP32_RNA__ exp10
    #define __ELEM_FP32_RNZ__ exp10
    #define __ELEM_FP32_RNP__ exp10
    #define __ELEM_FP32_RNN__ exp10
#endif
#include "LibTestHelper.h"

int main(int argc, char** argv) {
    RunTest("Exp10LogFile.txt");
    return 0;
}
