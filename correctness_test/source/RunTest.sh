#!/bin/bash

parallelism=10

while getopts j: flag
do
    case "${flag}" in
        j) parArg=${OPTARG};;
    esac
done

if [ "$parArg" -eq "$parArg" ] 2>/dev/null
then
   parallelism=$parArg
fi

echo -e "\033[1m* Checking Correctness tensorfloat32 output of several libraries.\033[0m"
echo -e "\033[1m* When each function is completely tested, it will print the result\033[0m"
echo -e "\033[1m\tRunning testing script in parallel\033[0m"
echo -e "\033[1m\tParallelism: $parallelism jobs\033[0m"
echo -e "\033[1m\tEstimated time: 7 minutes \033[0m"
echo -e ""
echo    "| function | Using ProgLibm   |  glibc dbl libm  |  Intel dbl libm  |   Using CR-LIBM  |  USING RLIBM-ALL |"
echo    "-----------------------------------------------------------------------------------------------------------"
echo    "|          | BF16 FP32 FP32   | BF16 FP32 FP32   | BF16 FP32 FP32   | BF16 FP32 FP32   | BF16 FP32 FP32   |"
echo    "|          | TF32  RE  ALL RM | TF32  RE  ALL RM | TF32  RE  ALL RM | TF32  RE  ALL RM | TF32  RE  ALL RM |"
cat ParallelCommand.txt | parallel -j $parallelism
