CC = gcc

funcs = Log Exp10 Exp10-adapt Exp2 Exp2-adapt Log10 Cosh Sinh Cospi Sinpi Log2 Exp Exp-adapt Log-piecewise Log2-piecewise Exp-piecewise Exp-piecewise-adapt Exp2-piecewise Exp10-piecewise Log10-piecewise log2-libc

src = $(patsubst %, %.c, $(funcs))
obj = $(patsubst %, %, $(funcs))


all: $(obj)

%: %.c
	$(CC) -O3 -std=c11 -I../../include/ -I../../rlibm-32/include/  $^ ../../libm/floatrnolibm.a -lgmp -lm -o $@

clean:
	rm -rf *.o $(funcs) *~ *.txt
