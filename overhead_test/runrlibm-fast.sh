#!/bin/bash
cd progressive/rno/glibc_rlibm_fast
make -s clean
make -s
./runAll.sh
make -s clean
cd ../../../float-rno
./runAll.sh
cd ../float/rlibm-fast
make -s clean
make -s
./runAll.sh
make -s clean
