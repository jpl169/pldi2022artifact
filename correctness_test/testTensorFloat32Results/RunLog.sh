#!/bin/bash

echo -n  "| ln(x)    |  "
./proglibm/Log
echo -n  " | "
./glibc_double/Log
echo -n  " | "
./intel_double/Log
echo -n  " | "
./crlibm/Log
echo -n  " | "
echo -ne " \033[0;32mo\033[0m    \033[0;32mo\033[0m    \033[0;32mo\033[0m     "
echo     " | "
