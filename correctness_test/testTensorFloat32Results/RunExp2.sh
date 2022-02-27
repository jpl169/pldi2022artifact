#!/bin/bash

echo -n "| exp2(x)  |  "
./proglibm/Exp2
echo -n " | "
./glibc_double/Exp2
echo -n " | "
./intel_double/Exp2
echo -n " | "
./crlibm/Exp2
echo -n " | "
echo -e " \033[0;32mo\033[0m    \033[0;32mo\033[0m    \033[0;32mo\033[0m     "
echo -n " | "
