#!/bin/bash

echo -n  "| log2(x)  |  "
./proglibm/Log2
echo -n  " |  "
./glibc_double/Log2
echo -n  " |  "
./intel_double/Log2
echo -n  " |  "
./crlibm/Log2
echo -n  " |  "
echo -ne " \033[0;32mo\033[0m    \033[0;32mo\033[0m    \033[0;32mo\033[0m     "
echo     " |  "
