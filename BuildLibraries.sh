#!/bin/bash
echo -e "Building necessary libraries: proglibm, rlibmAll, and rlibm32"
cd libm
make -s
cd ../rlibm-all
make -s
cd ../rlibm32
make -s
cd ..