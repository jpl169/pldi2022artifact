#!/bin/bash
cd correctness_test_full/source
./CleanTest.sh
./BuildTest.sh
./RunTest.sh
cd ../..