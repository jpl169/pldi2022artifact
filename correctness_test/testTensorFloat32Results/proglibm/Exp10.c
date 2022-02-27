#include "progressive/float_prog_lib.h"
#define __GEN_ELEM__ rlibm34_exp10
#define	__ELEM__ rlibm_prog_tf32_exp10
#include "LibTestHelper.h"

int main(int argc, char** argv) {
    
    RunTest("Exp10LogFile.txt");
    return 0;
}
