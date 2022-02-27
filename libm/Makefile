all: floatlibm floatproglibm

floatlibm:floatlibm.a
floatproglibm: floatproglibm.a

CC = gcc

floatfiles = log log2 log10 exp exp2 exp10 sinh cosh sinpi cospi
floatprogfiles = log_rno log_tf32 log_bf16 \
		log2_rno log2_tf32 log2_bf16 \
		log10_rno log10_tf32 log10_bf16 \
		exp_bf16 exp_rno exp_tf32 \
		exp2_bf16 exp2_rno exp2_tf32 \
		exp10_bf16 exp10_rno exp10_tf32 \
		sinh_bf16 sinh_rno sinh_tf32 \
		cosh_bf16 cosh_rno cosh_tf32 \
		cospi_bf16 cospi_rno cospi_tf32 \
		sinpi_bf16 sinpi_rno sinpi_tf32

floatsrcdir = float
floatobjdir = obj

floatprogsrcdir = progressive
floatprogobjdir = prog-obj

floatsrc = $(patsubst %, $(floatsrcdir)/%.c, $(floatfiles))
floatobj = $(patsubst %, $(floatobjdir)/%.o, $(floatfiles))

floatprogsrc = $(patsubst %, $(floatprogsrcdir)/%.c, $(floatprogfiles))
floatprogobj = $(patsubst %, $(floatprogobjdir)/%.o, $(floatprogfiles))


$(floatobjdir)/%.o: $(floatsrcdir)/%.c
	@mkdir -p $(floatobjdir)
	$(CC) -std=c11 -O3 -c $^ -I../include/ -o $@

$(floatprogobjdir)/%.o: $(floatprogsrcdir)/%.c
	@mkdir -p $(floatprogobjdir)
	$(CC) -std=c11 -O3 -c $^ -I../include/ -o $@

floatlibm.a: $(floatobj)
	ar rc $@ $^

floatproglibm.a: $(floatprogobj)
	ar rc $@ $^

clean:
	rm -rf floatlibm.a floatproglibm.a obj *~ float-prog/*.o prog-obj float/*.o float/*~ 