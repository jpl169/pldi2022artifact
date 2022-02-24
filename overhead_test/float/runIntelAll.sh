#!/bin/bash
echo -e "Testing rlibm-fast 32-bit float cycle count"
cd intel-rlibm-fast
make -s clean
make -s
./runAll.sh
make -s clean
cd ../intel_double
make -s clean
make -s
./runAll.sh
make -s clean
