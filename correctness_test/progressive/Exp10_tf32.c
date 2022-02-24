#define __ELEM__ rlibm_prog_tf32_exp10
#define __MPFR_ELEM__ mpfr_exp10
#include "LibTestHelper_tf32.h"

int main(int argc, char** argv) {

    if (argc != 2) {
        printf("UsageL %s <log file>\n", argv[0]);
        exit(0);
    }
    
    RunTest(argv[1]);
    return 0;
}
