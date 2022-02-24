#!/bin/bash
echo -e "Testing rlibm-fast 32-bit float cycle count"
cd rlibm-fast
make -s clean
make -s
./runAll.sh
make -s clean
cd ../rlibm32
make -s clean
make -s
./runAll.sh
make -s clean
cd ../crlibm
make -s clean
make -s
./runAll.sh
make -s clean
cd ../glibc_double
make -s clean
make -s
./runAll.sh
make -s clean
