#!/bin/bash
mkdir -p ${BF16INTERVALPATH}

./Log ${BF16INTERVALPATH}/bf16LogIntervals
./Log2 ${BF16INTERVALPATH}/bf16Log2Intervals
./Log10 ${BF16INTERVALPATH}/bf16Log10Intervals
./Exp ${BF16INTERVALPATH}/bf16ExpIntervals
./Exp2 ${BF16INTERVALPATH}/bf16Exp2Intervals
./Exp10 ${BF16INTERVALPATH}/bf16Exp10Intervals
./Sinh ${BF16INTERVALPATH}/bf16SinhForSinhIntervals ${BF16INTERVALPATH}/bf16CoshForSinhIntervals
./Cosh ${BF16INTERVALPATH}/bf16SinhForCoshIntervals ${BF16INTERVALPATH}/bf16CoshForCoshIntervals
./Sinpi ${BF16INTERVALPATH}/bf16SinpiForSinpiIntervals ${BF16INTERVALPATH}/bf16CospiForSinpiIntervals
./Cospi ${BF16INTERVALPATH}/bf16SinpiForCospiIntervals ${BF16INTERVALPATH}/bf16CospiForCospiIntervals

