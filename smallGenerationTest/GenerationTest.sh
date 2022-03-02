#!/bin/bash

echo -e "\033[1mGenerating Log2(x) progressive polynomials for inputs x in [1, 2) \033[0m"
echo -e "\033[1mEstimated time: 7 minutes \033[0m"
echo -e "\033[1mGenerating float34 oracle file \033[0m"

mkdir -p ${SMALLORACLEPATH}
cd GenerateOracleFiles
make -s clean
make -s
./Log2 ${SMALLORACLEPATH}/Log2Oracle
cd ..

mkdir -p ${SMALLINTERVALS}
echo -e "\033[1mGenerating bfloat16 interval file \033[0m"
cd IntervalGen/bfloat16
make -s clean
make -s
./Log2 ${SMALLINTERVALS}/Bf16Log2Interval
cd ..
echo -e "\033[1mGenerating tensorfloat32 interval file \033[0m"
cd tensorfloat32
make -s clean
make -s
./Log2 ${SMALLINTERVALS}/TF32Log2Interval
cd ..
echo -e "\033[1mGenerating float34 interval file \033[0m"
cd float34RO
make -s clean
make -s
./Log2 ${SMALLINTERVALS}/FP34Log2Interval ${SMALLORACLEPATH}/Log2Oracle
cd ../..

echo -e "\033[1mGenerating progressive polynomial \033[0m"
cd polynomial_gen
make -s clean
make -s
./polygen ${SMALLINTERVALS}/Bf16Log2Interval ${SMALLINTERVALS}/TF32Log2Interval ${SMALLINTERVALS}/FP34Log2Interval log2.config 1
cd ..
