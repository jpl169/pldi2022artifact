#define __ELEM__ rlibm_prog_bf16_sinh
#define __MPFR_ELEM__ mpfr_sinh
#include "LibTestHelper_bf16.h"

int main(int argc, char** argv) {
    
  if (argc != 2) {
    printf("UsageL %s <log file>\n", argv[0]);
    exit(0);
  }
  
  RunTest(argv[1]);
  return 0;
}
