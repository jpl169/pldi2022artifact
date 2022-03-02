CC = $(ICCPATH)/compiler/latest/linux/bin/intel64/icc

funcNames = Log Log2 Log10 Exp Exp10 Exp2 Sinh Cosh Sinpi Cospi

src = $(patsubst %, %.c, $(funcNames))
obj = $(patsubst %, %, $(funcNames))

all: $(obj)

%: %.c
	$(CC) -O3 -std=c11 -fp-model strict -no-ftz -D __INTEL_COMPILER -I../ -I../../../include/ -I../../../rlibm-all/float34RO_headers/ $^ ../../../rlibm-all/lib/rlibmAllMathLib.a -o $@

clean:
	rm -rf $(obj) *.dSYM
