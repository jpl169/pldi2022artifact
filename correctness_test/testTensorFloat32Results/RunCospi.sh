#!/bin/bash

echo -n  "| cospi(x) |  "
./proglibm/Cospi
echo -n  " |  "
echo -n  " N/A  N/A  N/A  "
echo -n  " |  "
./intel_double/Cospi
echo -n  " |  "
./crlibm/Cospi
echo -n  " |  "
echo -ne " \033[0;32mo\033[0m    \033[0;32mo\033[0m    \033[0;32mo\033[0m     "
echo     " |  "
