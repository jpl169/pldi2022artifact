#!/bin/bash

echo -e "Testing crlibm progressive bf16 cycle count"

echo -e "Log"
taskset -c 1 ./log

echo -e "Log2"
taskset -c 1 ./log2

echo -e "Log10"
taskset -c 1 ./log10

echo -e "Exp"
taskset -c 1 ./exp

echo -e "Exp2"
echo "N/A"

echo -e "Exp10"
echo "N/A"

echo -e "Sinpi"
taskset -c 1 ./sinpi

echo -e "Cospi"
taskset -c 1 ./cospi

echo -e "Cosh"
taskset -c 1 ./cosh

echo -e "Sinh"
taskset -c 1 ./sinh
