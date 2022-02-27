#!/bin/bash

echo -n "| exp10(x)  |  "
./proglibm/Exp10
echo -n " | "
./glibc_double/Exp10
echo -n " | "
./intel_double/Exp10
echo -n " | "
./crlibm/Exp10
echo -n " | "
echo -e " \033[0;32mo\033[0m    \033[0;32mo\033[0m    \033[0;32mo\033[0m     "
echo -n " | "
