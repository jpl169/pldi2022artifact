CC = gcc

funcs = log2 log log10 exp sinh cosh sinpi cospi

src = $(patsubst %, %.c, $(funcs))
obj = $(patsubst %, %, $(funcs))


all: $(obj)

%: %.c
	$(CC) -std=c11 -O0 -frounding-math -fsignaling-nans -I../../../include/ -I../../../external/include/crlibm/ $^ ../../../external/lib/libcrlibm.a -lgmp -lm -o $@

clean:
	rm -rf *.o $(funcs) *~ *.txt
