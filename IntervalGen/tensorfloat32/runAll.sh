#!/bin/bash
mkdir -p ${TF32INTERVALPATH}

./Log ${TF32INTERVALPATH}/tf32LogIntervals
./Log2 ${TF32INTERVALPATH}/tf32Log2Intervals
./Log10 ${TF32INTERVALPATH}/tf32Log10Intervals
./Exp ${TF32INTERVALPATH}/tf32ExpIntervals
./Exp2 ${TF32INTERVALPATH}/tf32Exp2Intervals
./Exp10 ${TF32INTERVALPATH}/tf32Exp10Intervals
./Sinh ${TF32INTERVALPATH}/tf32SinhForSinhIntervals ${TF32INTERVALPATH}/tf32CoshForSinhIntervals
./Cosh ${TF32INTERVALPATH}/tf32SinhForCoshIntervals ${TF32INTERVALPATH}/tf32CoshForCoshIntervals
./Sinpi ${TF32INTERVALPATH}/tf32SinpiForSinpiIntervals ${TF32INTERVALPATH}/tf32CospiForSinpiIntervals
./Cospi ${TF32INTERVALPATH}/tf32SinpiForCospiIntervals ${TF32INTERVALPATH}/tf32CospiForCospiIntervals

