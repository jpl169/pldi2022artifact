#!/bin/bash
cd crlibm
make -s clean
make -s
./runAll.sh
make -s clean
cd ../glibc_double
make -s clean
make -s
./runAll.sh
make -s clean
cd ../glibc_rlibm_all
make -s clean
make -s
./runAll.sh
make -s clean
cd ../glibc_rlibm_fast
make -s clean
make -s
./runAll.sh
make -s clean
