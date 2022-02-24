CC = gcc

funcs = log2 log log10 exp exp2 exp2_adapt exp10 exp10_adapt sinh cosh sinpi cospi log2-piecewise log-piecewise log10-piecewise exp-piecewise exp-piecewise-adapt exp2-piecewise exp10-piecewise

src = $(patsubst %, %.c, $(funcs))
obj = $(patsubst %, %, $(funcs))


all: $(obj)

%: %.c
	$(CC) -std=c11 -O0 -frounding-math -fsignaling-nans -I../../include/ $^ ../../libm/floatrnolibm.a -lgmp -lm -o $@

clean:
	rm -rf *.o $(funcs) *~ *.txt
