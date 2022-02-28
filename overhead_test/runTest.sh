#!/bin/bash
cd glibc_proglibm/bf16
make -s clean
make -s
./runAll.sh
cd ../tf32
make -s clean
make -s
./runAll.sh
cd ../rno
make -s clean
make -s
./runAll.sh

cd ../../glibc_double/bf16
make -s clean
make -s
./runAll.sh
cd ../tf32
make -s clean
make -s
./runAll.sh
cd ../rno
make -s clean
make -s
./runAll.sh
cd ../..

cd ../../crlibm/bf16
make -s clean
make -s
./runAll.sh
cd ../tf32
make -s clean
make -s
./runAll.sh
cd ../rno
make -s clean
make -s
./runAll.sh
cd ../..
