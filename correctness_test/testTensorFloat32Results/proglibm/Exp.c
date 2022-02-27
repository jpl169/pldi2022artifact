#include "progressive/float_prog_lib.h"
#define __GEN_ELEM__ rlibm34_exp
#define	__ELEM__ rlibm_prog_tf32_exp
#include "LibTestHelper.h"

int main(int argc, char** argv) {
    RunTest("ExpLogFile.txt");
    return 0;
}
