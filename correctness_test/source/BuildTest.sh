#!/bin/bash
cd proglibm
make -s clean
make -s
cd ../glibc_double
make -s clean
make -s
cd ../intel_double
make -s clean
make -s
cd ../crlibm
make -s clean
make -s
cd ..
