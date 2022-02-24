CC = gcc

funcs = log2 log log10 exp exp2 exp2_adapt exp10 sinh cosh sinpi cospi cosh_v2 exp10_v2

src = $(patsubst %, %.c, $(funcs))
obj = $(patsubst %, %, $(funcs))


all: $(obj)

%: %.c
	$(CC) -std=c11 -O0 -frounding-math -fsignaling-nans -I../../../include/ $^ ../../../libm/floatlibm.a -lgmp -lm -o $@

clean:
	rm -rf *.o $(funcs) *~ *.txt
