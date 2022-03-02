#!/bin/bash
mkdir -p ${ORACLEPATH}

./Log ${ORACLEPATH}/Float34ROLogOracle
./Log2 ${ORACLEPATH}/Float34ROLog2Oracle
./Log10 ${ORACLEPATH}/Float34ROLog10Oracle
./Exp ${ORACLEPATH}/Float34ROExpOracle
./Exp2 ${ORACLEPATH}/Float34ROExp2Oracle
./Exp10 ${ORACLEPATH}/Float34ROExp10Oracle
./Sinh ${ORACLEPATH}/Float34ROSinhOracle
./Cosh ${ORACLEPATH}/Float34ROCoshOracle
./Sinpi ${ORACLEPATH}/Float34ROSinpiOracle
./Cospi ${ORACLEPATH}/Float34ROCospiOracle

