objects = Log Log2 Log10 Exp Exp10 Exp2 Cosh Sinh Sinpi Cospi llvm-libc-log llvm-libc-log2

CC=g++

INCLUDES= -I$(SOPLEXPATH)/src -I../helper/

CPP_FLAGS= -O2 -mavx -mfma 
 
LD_FLAGS= -lmpfr -lz -lm

all: $(objects)

$(objects): %: %.cpp
	$(CC) $(CPP_FLAGS) $(INCLUDES) $^ $(LD_FLAGS) -o $@

clean:
	rm -rf *.o $(objects) *~ *.dSYM
