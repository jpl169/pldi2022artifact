#include "stdio.h"
#include "stdlib.h"
#include "RoundToOdd.h"

mpfr_t mval;

double ComputeOracleResult(float x);

void RunTest(char* FileName) {
    unsigned long count = 0;
  
    float x;
    floatX xbase;

    FILE* f = fopen(FileName, "w");
  
    for (count = 0x0; count < 0x100000000; count++) {
        xbase.x = count;
        x = xbase.f;
    
        double res = ComputeOracleResult(x);

        fwrite(&res, sizeof(double), 1, f);
    }

    fclose(f);
}
