objects = Log2 Log Log10 Exp Exp2 Exp10 Cosh Sinh Cospi Sinpi

CC=g++

INCLUDES= -I$(SOPLEXPATH)/src -I../../helper/

CPP_FLAGS= -O2

LD_FLAGS= -lmpfr -lz -lm

all: $(objects)

$(objects): %: %.cpp
	$(CC) $(CPP_FLAGS) $(INCLUDES) $^ $(LD_FLAGS) -o $@

clean:
	rm -rf *.o $(objects) *~ *.dSYM
