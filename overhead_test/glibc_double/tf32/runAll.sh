#!/bin/bash

echo -e "--glibc double--"

echo -e "Log"
taskset -c 1 ./log log.txt

echo -e "Log2"
taskset -c 1 ./log2 log2.txt

echo -e "Log10"
taskset -c 1 ./log10 log10.txt

echo -e "Exp"
taskset -c 1 ./exp exp.txt

echo -e "Exp2"
taskset -c 1 ./exp2 exp2.txt

echo -e "Exp10"
taskset -c 1 ./exp10 exp10.txt

echo -e "Cosh"
taskset -c 1 ./cosh cosh.txt

echo -e "Sinh"
taskset -c 1 ./sinh sinh.txt
