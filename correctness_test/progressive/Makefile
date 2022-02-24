CC = gcc

funcs = Exp2_bf16 Exp2_rno Exp2_tf32 Log2_bf16 Log2_rno Log2_tf32 Log10_bf16 Log10_rno Log10_tf32 Log_bf16 Log_rno Log_tf32 Exp_bf16 Exp_rno Exp_tf32 Exp10_bf16 Exp10_rno Exp10_tf32 Cosh_bf16 Cosh_rno Cosh_tf32 Sinh_bf16 Sinh_rno Sinh_tf32 Cospi_bf16 Cospi_rno Cospi_tf32 Sinpi_bf16 Sinpi_rno Sinpi_tf32

src = $(patsubst %, %.c, $(funcs))
obj = $(patsubst %, %, $(funcs))


all: $(obj)

%: %.c
	$(CC) -O3 -std=c11 -I../../include/  $^ ../../libm/floatproglibm.a -lmpfr -lgmp -lm -o $@

clean:
	rm -rf *.o $(funcs) *~ *.txt
