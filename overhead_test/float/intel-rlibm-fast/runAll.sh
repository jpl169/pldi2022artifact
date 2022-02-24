#!/bin/bash

echo -e "--rlibm-fast test for producing float result in intel compiler environment--"

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

echo -e "Exp10_v2"
taskset -c 1 ./exp10_v2

echo -e "Sinpi"
taskset -c 1 ./sinpi

echo -e "Cospi"
taskset -c 1 ./cospi

echo -e "Cosh"
taskset -c 1 ./cosh

echo -e "Cosh_v2"
taskset -c 1 ./cosh_v2

echo -e "Sinh"
taskset -c 1 ./sinh
