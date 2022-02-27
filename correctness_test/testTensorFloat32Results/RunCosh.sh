#!/bin/bash

echo -n "| cosh(x)  |  "
echo -ne "\033[0;32mo\033[0m   \033[0;32mo\033[0m   \033[0;32mo\033[0m   \033[0;32mo\033[0m   \033[0;32mo\033[0m"
echo -n "  |  "
./proglibm/Cosh
echo    "  |"
./glibc_double/Cosh
echo -n "  |  "
./intel_double/Cosh
echo -n "  |  "
./crlibm/Cosh
echo -n "  |  "
./rlibm32/Cosh
echo    "  |"
