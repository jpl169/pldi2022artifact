#include "progressive/float_prog_lib.h"
#define __GEN_ELEM__ rlibm34_sinh
#define	__ELEM__ rlibm_prog_tf32_sinh
#include "LibTestHelper.h"

int main(int argc, char** argv) {
    RunTest("SinhLogFile.txt");
    return 0;
}
