CC = gcc

funcs = log2 log log10 exp exp2 exp10 sinh cosh sinpi cospi

src = $(patsubst %, %.c, $(funcs))
obj = $(patsubst %, %, $(funcs))


all: $(obj)

%: %.c
	$(CC) -std=c11 -O0 -frounding-math -fsignaling-nans -I../../ -I../../../include/ -I../../../rlibm-all/float34RO_headers/ $^ ../../../rlibm-all/lib/rlibmAllMathLib.a -lgmp -lm -o $@

clean:
	rm -rf *.o $(funcs) *~ *.txt
