#include <stdio.h>
#include "external/poly34.h"

int main(int argc,char** argv)
{
    // roots
    double x[3];

    // polynomial coefficients (in monomial form)
    double u0 = 9.9999999999999988897769753748434595763683319091796875000000000000000000e-01;
    double u1 = 6.9314718055997448509231162461219355463981628417968750000000000000000000e-01;
    double u2 = 2.4022650697767972127749658284301403909921646118164062500000000000000000e-01;
    double u3 = 5.5504104858622581308846832826020545326173305511474609375000000000000000e-02;
    double u4 = 9.6181130451127132274802278288916568271815776824951171875000000000000000e-03;
    double u5 = 1.3529558545669370488162552845778918708674609661102294921875000000000000e-03;

    // variables for the cubic equation
    double p = u3/u5, q = u4/u5;
    double a = -(24*q)/40.0, b = (p+2*q*q)/20.0, c = (u2/u5 - p*q)/40.0;

    int val = SolveP3(x,a,b,c);
    printf("Return Value: %d, Computed Root: %.70e\n",val,x[0]);

    double a0 = x[0];
    double a0_sqr = a0*a0;
    double a1 = p - 4*q*a0 + 10*a0_sqr;
    double a3 = q - 4*a0;
    double a2 = u1/u5 - a0_sqr*(a1+a0_sqr) - 2*a3*a0*(a1+2*a0_sqr);
    double a4 = u0/u5 - a2*a3 - a0_sqr*a3*(a1+a0_sqr);

    printf("a0 = %.70e\n",a0);
    printf("a1 = %.70e\n",a1);
    printf("a2 = %.70e\n",a2);
    printf("a3 = %.70e\n",a3);
    printf("a4 = %.70e\n",a4);

    return 0;
}
