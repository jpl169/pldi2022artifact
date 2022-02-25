SOPLEX_INCLUDE=/filer/tmp1/sn349/soplex-4.0.1/src/
SOPLEX_LIB=/filer/tmp1/sn349/soplex-4.0.1/build/lib/libsoplex.a

all: piecewise piecewise-progressive

piecewise: rlibm-fast.h piecewise-small.cpp
	g++ -O2 -I$(SOPLEX_INCLUDE) -std=c++11 piecewise-small.cpp  $(SOPLEX_LIB) -o piecewise-polygen -lgmp -lz -lm

piecewise-progressive: rlibm-fast.h progressive-piecewise-small.cpp
	g++ -O2 -I$(SOPLEX_INCLUDE) -std=c++11 progressive-piecewise-small.cpp  $(SOPLEX_LIB) -o progressive-piecewise-polygen -lgmp -lz -lm

clean:
	rm -f *~ polygen exact-polygen progressive-polygen filter *.txt piecewise-polygen piecewise-progressive-polygen
 
