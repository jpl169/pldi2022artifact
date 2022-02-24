#!/bin/bash

if [ -z ${ORACLEPATH}]; then
  ORACLEPATH=/filer/tmp1/jpl169/float34_oracle
fi

echo -e "Testing Rlibm-fast speedup"
make -s clean
make -s

echo -e "Log"
taskset -c 12 ./Log ${ORACLEPATH}/Float34ROLogData

echo -e "Log2"
taskset -c 12 ./Log2 ${ORACLEPATH}/Float34ROLog2Data

echo -e "Log10"
taskset -c 12 ./Log10 ${ORACLEPATH}/Float34ROLog10Data

#echo -e "Exp"
#taskset -c 12 ./Exp ${ORACLEPATH}/ExpOracle

echo -e "Exp2"
taskset -c 12 ./Exp2 ${ORACLEPATH}/Float34ROExp2Data

echo -e "Exp10"
taskset -c 12 ./Exp10 ${ORACLEPATH}/Float34ROExp10Data

echo -e "Cosh"
taskset -c 12 ./Cosh ${ORACLEPATH}/Float34ROCoshData

echo -e "Sinh"
taskset -c 12 ./Sinh ${ORACLEPATH}/Float34ROSinhData

echo -e "Cospi"
taskset -c 12 ./Cospi ${ORACLEPATH}/Float34ROCospiData

echo -e "Sinpi"
taskset -c 12 ./Sinpi ${ORACLEPATH}/Float34ROSinpiData

make -s clean
