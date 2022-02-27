CC = gcc

funcNames = Log Log2 Log10 Exp Sinh Cosh Sinpi Cospi

src = $(patsubst %, %.c, $(funcNames))
obj = $(patsubst %, %, $(funcNames))

all: $(obj)

%: %.c
	$(CC) -frounding-math -fsignaling-nans -O3 -std=c11 -I../ -I../../../include/ -I../../../external/include/crlibm/ -I../../../rlibm-all/float34RO_headers/ $^ ../../../external/lib/libcrlibm.a ../../../rlibm-all/lib/rlibmAllMathLib.a -o $@

clean:
	rm -rf $(obj) *.dSYM
