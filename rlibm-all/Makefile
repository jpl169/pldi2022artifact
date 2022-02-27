CC = gcc

float34ROFNames = log log2 log10 exp exp10 exp2 sinh cosh sinpi cospi

float34ROSrcDir = source
float34ROObjDir = obj
libDir = lib

float34ROSrc = $(patsubst %, $(float34ROSrcDir)/%.c, $(float34ROFNames))
float34ROObj = $(patsubst %, $(float34ROObjDir)/%.o, $(float34ROFNames))

all: $(libDir)/rlibmAllMathLib.a

$(float34ROObjDir)/%.o: $(float34ROSrcDir)/%.c
	@mkdir -p $(float34ROObjDir)
	$(CC) -std=c11 -O3 -c $^ -I./ -o $@

$(libDir)/rlibmAllMathLib.a: $(float34ROObj)
	@mkdir -p $(libDir)
	ar rc $@ $^

float34ROmlib: $(libDir)/rlibmAllMathLib.a

clean:
	rm -rf obj lib *.dSYM
