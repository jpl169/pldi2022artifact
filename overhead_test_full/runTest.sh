echo -e "\033[1m* Overhead testing for all inputs and all functions:  \033[0m"
echo -e "\033[1m  Estimated time: 10 hours \033[0m"
echo -e ""

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

cd ../../rlibmall/bf16
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

cd ../../intel_proglibm/bf16
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

cd ../../intel_double/bf16
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

python3 prog_over_crlibm_perc.py
python3 prog_over_glibc_perc.py
python3 prog_over_intel_perc.py
python3 prog_over_rlibm_all_perc.py