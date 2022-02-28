#!/bin/bash
cd intel_double
make -s clean
make -s
./runAll.sh
make -s clean
cd ../intel_rlibm_fast
make -s clean
make -s
./runAll.sh
make -s clean
