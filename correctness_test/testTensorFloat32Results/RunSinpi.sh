#!/bin/bash

echo -n  "| sinpi(x) |  "
./proglibm/Sinpi
echo -n  " | "
echo -n  " N/A  N/A  N/A  "
echo -n  " | "
./intel_double/Sinpi
echo -n  " | "
./crlibm/Sinpi
echo -n  " | "
echo -ne " \033[0;32mo\033[0m    \033[0;32mo\033[0m    \033[0;32mo\033[0m     "
echo     " | "
