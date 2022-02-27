CC = gcc

floatFNames = log log2 log10 exp exp2 exp10 sinh cosh sinpi cospi log2_8 log10_8 

floatSrcDir = source
floatObjDir = obj
libDir = lib

floatSrc = $(patsubst %, $(floatSrcDir)/%.c, $(floatFNames))
floatObj = $(patsubst %, $(floatObjDir)/%.o, $(floatFNames))

all: $(libDir)/rlibm32MathLib.a

$(floatObjDir)/%.o: $(floatSrcDir)/%.c
	@mkdir -p $(floatObjDir)
	$(CC) -std=c11 -O3 -c $^ -I./ -I../common-include -o $@

$(libDir)/rlibm32MathLib.a: $(floatObj)
	@mkdir -p $(libDir)
	ar rc $@ $^

floatmlib: $(libDir)/rlibm32MathLib.a

clean:
	rm -rf obj lib *.dSYM
