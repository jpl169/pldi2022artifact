SOPLEX_INCLUDE=/filer/tmp1/sn349/soplex-4.0.1/src/
SOPLEX_LIB=/filer/tmp1/sn349/soplex-4.0.1/build/lib/libsoplex.a

all: progressive

progressive: rlibm-fast.h progressive.cpp
	g++ -O2 -I$(SOPLEX_INCLUDE) -std=c++11 progressive.cpp  $(SOPLEX_LIB) -o polygen -lgmp -lz -lm

clean:
	rm -f *~ polygen filter *.txt
 
