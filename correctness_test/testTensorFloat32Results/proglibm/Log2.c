#include "progressive/float_prog_lib.h"
#define __GEN_ELEM__ rlibm34_log2
#define	__ELEM__ rlibm_prog_tf32_log2
#include "LibTestHelper.h"

int main(int argc, char** argv) {

    RunTest("Log2LogFile.txt");
    return 0;
}
