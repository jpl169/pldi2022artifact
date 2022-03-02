#!/bin/bash
cd correctness_test/source
./CleanTest.sh
./BuildTest.sh
./RunTest.sh
cd ../..