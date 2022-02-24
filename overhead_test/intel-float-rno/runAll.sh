#!/bin/bash

echo -e "--rlibm-fast-rno testing in intel compiler environment--"
make -s clean
make -s

echo -e "Log"
taskset -c 1 ./log

echo -e "Log2"
taskset -c 1 ./log2

echo -e "Log10"
taskset -c 1 ./log10

echo -e "Exp"
taskset -c 1 ./exp

echo -e "Exp2"
taskset -c 1 ./exp2

echo -e "Exp10"
taskset -c 1 ./exp10

echo -e "Log-piecewise"
taskset -c 1 ./log-piecewise

echo -e "Log2-piecewise"
taskset -c 1 ./log2-piecewise

echo -e "Log10-piecewise"
taskset -c 1 ./log10-piecewise

echo -e "Exp-piecewise"
taskset -c 1 ./exp-piecewise

echo -e "Exp2-piecewise"
taskset -c 1 ./exp2-piecewise

echo -e "Exp10-piecewise"
taskset -c 1 ./exp10-piecewise

echo -e "Sinpi"
taskset -c 1 ./sinpi

echo -e "Cospi"
taskset -c 1 ./cospi

echo -e "Cosh"
taskset -c 1 ./cosh

echo -e "Sinh"
taskset -c 1 ./sinh

make -s clean
