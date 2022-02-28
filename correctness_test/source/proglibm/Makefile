CC = gcc

funcNames = Log Log2 Log10 Exp Exp10 Exp2 Sinh Cosh Cospi Sinpi

obj = $(patsubst %, %, $(funcNames)) $(patsubst %, %, $(funcPiNames))

all: $(obj)

%: %.c
	$(CC) -frounding-math -fsignaling-nans -O3 -std=c11 -I../ -I../../../include/ -I../../../rlibm-all/float34RO_headers/  $^ ../../../rlibm-all/lib/rlibmAllMathLib.a ../../../libm/floatproglibm.a -lm -o $@

clean:
	rm -rf $(obj) *.dSYM
