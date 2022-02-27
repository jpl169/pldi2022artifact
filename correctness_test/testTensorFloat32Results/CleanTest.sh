#!/bin/bash
cd proglibm
make -s clean
cd ../glibc_double
make -s clean
cd ../intel_double
make -s clean
cd ../crlibm
make -s clean
cd ..
