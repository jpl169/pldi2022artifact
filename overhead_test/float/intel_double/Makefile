CC = $(ICCPATH)/compiler/latest/linux/bin/intel64/icc

funcs = log2 log log10 exp exp2 exp10 sinh cosh sinpi cospi

src = $(patsubst %, %.c, $(funcs))
obj = $(patsubst %, %, $(funcs))


all: $(obj)

%: %.c
	$(CC) -std=c11 -O0  -fp-model strict -no-ftz -I../../../include/ $^ -o $@

clean:
	rm -rf *.o $(funcs) *~ *.txt
