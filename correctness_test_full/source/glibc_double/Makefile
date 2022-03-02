CC = gcc

funcNames = Log Log2 Log10 Exp Exp10 Exp2 Sinh Cosh

src = $(patsubst %, %.c, $(funcNames))
obj = $(patsubst %, %, $(funcNames))

all: $(obj)

%: %.c
	$(CC) -frounding-math -fsignaling-nans -O3 -std=c11 -I../ -I../../../include/ -I../../../rlibm-all/float34RO_headers/  $^ ../../../rlibm-all/lib/rlibmAllMathLib.a -lm -o $@

clean:
	rm -rf $(obj) *.dSYM
