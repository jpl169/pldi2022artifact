#!/bin/bash

echo -n  "| log10(x) |  "
./proglibm/Log10
echo -n  " | "
./glibc_double/Log10
echo -n  " | "
./intel_double/Log10
echo -n  " | "
./crlibm/Log10
echo -n  " | "
echo -ne " \033[0;32mo\033[0m    \033[0;32mo\033[0m    \033[0;32mo\033[0m     "
echo     " | "
