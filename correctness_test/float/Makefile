CC = gcc

funcs = exp2 exp2_adapt log2 exp log10 log

src = $(patsubst %, %.c, $(funcs))
obj = $(patsubst %, %, $(funcs))


all: $(obj)

%: %.c
	$(CC) -O3 -DRLIBM32_ORACLE -std=c11 -I../ -I../../include/  -I../../rlibm-32/include/ $^ ../../libm/floatlibm.a ../../rlibm-32/lib/floatMathLib.a -lmpfr -lgmp -o $@

clean:
	rm -rf *.o exp2 log2 exp log10 *~ *.txt log
