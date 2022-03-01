#!/bin/bash
mkdir -p ${TF32INTERVALPATH}

./Log ${TF32INTERVALPATH}/bf16LogIntervals
./Log2 ${TF32INTERVALPATH}/bf16Log2Intervals
./Log10 ${TF32INTERVALPATH}/bf16Log10Intervals
./Exp ${TF32INTERVALPATH}/bf16ExpIntervals
./Exp2 ${TF32INTERVALPATH}/bf16Exp2Intervals
./Exp10 ${TF32INTERVALPATH}/bf16Exp10Intervals
./Sinh ${TF32INTERVALPATH}/bf16SinhForSinhIntervals ${TF32INTERVALPATH}/bf16CoshForSinhIntervals
./Cosh ${TF32INTERVALPATH}/bf16SinhForCoshIntervals ${TF32INTERVALPATH}/bf16CoshForCoshIntervals
./Sinpi ${TF32INTERVALPATH}/bf16SinpiForSinpiIntervals ${TF32INTERVALPATH}/bf16CospiForSinpiIntervals
./Cospi ${TF32INTERVALPATH}/bf16SinpiForCospiIntervals ${TF32INTERVALPATH}/bf16CospiForCospiIntervals

