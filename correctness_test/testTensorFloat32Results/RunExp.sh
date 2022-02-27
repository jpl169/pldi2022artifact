#!/bin/bash

echo -n "| exp(x)   |  "
./proglibm/Exp
echo -n " | "
./glibc_double/Exp
echo -n " | "
./intel_double/Exp
echo -n " | "
./crlibm/Exp
echo -n " | "
echo -e " \033[0;32mo\033[0m    \033[0;32mo\033[0m    \033[0;32mo\033[0m     "
echo -n " | "
