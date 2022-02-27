#!/bin/bash

echo -n  "| exp2(x)  |  "
./proglibm/Exp2
echo -n  " |  "
./glibc_double/Exp2
echo -n  " |  "
./intel_double/Exp2
echo -n  " |  "
echo -n  " N/A  N/A  N/A  "
echo -n  " |  "
echo -ne " \033[0;32mo\033[0m    \033[0;32mo\033[0m    \033[0;32mo\033[0m     "
echo     " |  "
