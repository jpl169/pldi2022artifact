#!/bin/bash

echo -n "| cosh(x)  |  "
./proglibm/Cosh
echo -n " | "
./glibc_double/Cosh
echo -n " | "
./intel_double/Cosh
echo -n " | "
./crlibm/Cosh
echo -n " | "
echo -e " \033[0;32mo\033[0m    \033[0;32mo\033[0m    \033[0;32mo\033[0m     "
echo -n " | "
