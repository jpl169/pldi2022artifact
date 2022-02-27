#!/bin/bash

echo -n  "| sinh(x)  |  "
./proglibm/Sinh
echo -n  " | "
./glibc_double/Sinh
echo -n  " | "
./intel_double/Sinh
echo -n  " | "
./crlibm/Sinh
echo -n  " | "
echo -ne " \033[0;32mo\033[0m    \033[0;32mo\033[0m    \033[0;32mo\033[0m     "
echo     " | "
