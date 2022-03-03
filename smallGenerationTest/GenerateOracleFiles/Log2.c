#include "OracleGenerate.h"

// ComputeOracleResult:
// Given a float input, compute the correctly rouned round-to-odd (ro) result
// in 34-bit floating point representation.
// The oracle must account for every special cases.
double ComputeOracleResult(float x) {
    if (x == 1.0 / 0.0) return 1.0 / 0.0;
    if (x == 0) return -1.0 / 0.0;
    
    int sticky = 0;
    // Set float value to mpfr. This should be exact
    int status = mpfr_set_d(mval, (double)x, MPFR_RNDN);
    if (status != 0) {
        printf("Something went wrong when setting float to mpfr\n");
        exit(0);
    }
    
    // Call MPFR's log2 function.
    status = mpfr_log2(mval, mval, MPFR_RNDZ);
    if (status != 0) sticky |= 0x1;
    
    // FromMPFRToFloat34RO accepts a MPFR value and turns it into a 34-bit FP
    // value with the ro mode. Also accepts sticky bit.
    return FromMPFRToFloat34Ro(mval, sticky);
}

int main(int argc, char** argv) {
    mpfr_init2(mval, 200);

    if (argc != 2) {
        printf("UsageL %s <output file>\n", argv[0]);
        exit(0);
    }
    
    // TODO : Set the range of inputs to generate oracle for. This example
    // generates oracle for inputs in [1, 2)
    RunTest(argv[1], 0x3f800000, 0x40000000);
    mpfr_clear(mval);
    return 0;
}
