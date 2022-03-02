#!/bin/bash

echo -e "Testing rlibmall float function performance"

taskset -c 1 ./log log.txt
taskset -c 1 ./log2 log2.txt
taskset -c 1 ./log10 log10.txt
taskset -c 1 ./exp exp.txt
taskset -c 1 ./exp2 exp2.txt
taskset -c 1 ./exp10 exp10.txt
taskset -c 1 ./sinpi sinpi.txt
taskset -c 1 ./cospi cospi.txt
taskset -c 1 ./cosh cosh.txt
taskset -c 1 ./sinh sinh.txt
