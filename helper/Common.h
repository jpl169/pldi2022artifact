#pragma once
#include "mpfr.h"
#include "math.h"

using namespace std;

typedef union {
    float f;
    unsigned x;
} floatX;

typedef union {
    double d;
    unsigned long long int x;
} doubleX;

struct IntData {
    double lb;
    double ub;
};
