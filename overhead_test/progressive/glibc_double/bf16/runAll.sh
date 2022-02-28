#!/bin/bash

echo -e "Testing glibc double progressive bf16 cycle count"

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

echo -e "Sinpi"
echo -e "N/A"

echo -e "Cospi"
echo -e "N/A"

echo -e "Cosh"
taskset -c 1 ./cosh

echo -e "Sinh"
taskset -c 1 ./sinh
