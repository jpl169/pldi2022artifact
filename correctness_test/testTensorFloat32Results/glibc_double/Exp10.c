#define __GEN_ELEM__ rlibm34_exp10
#if __APPLE__
    #define	__ELEM__ __exp10
#else
    #define __ELEM__ exp10
#endif
#include "LibTestHelper.h"

int main(int argc, char** argv) {
    RunTest("Exp10LogFile.txt");
    return 0;
}
