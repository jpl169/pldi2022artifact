#!/bin/bash
cd progressive/rno
./runIntelAll.sh
cd ../../intel-float-rno
./runAll.sh
cd ../float
./runIntelAll.sh
