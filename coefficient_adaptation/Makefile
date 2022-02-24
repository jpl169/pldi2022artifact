SOPLEX_INCLUDE=/filer/tmp1/sn349/soplex-4.0.1/src/
SOPLEX_LIB=/filer/tmp1/sn349/soplex-4.0.1/build/lib/libsoplex.a


all: polygen piecewise

polygen:main.cpp
	g++ -O2 -I$(SOPLEX_INCLUDE) -std=c++11 main.cpp external/poly34.cpp $(SOPLEX_LIB) -o polygen -lgmp -lz -lm

piecewise: rlibm-fast.h piecewise-small.cpp
	g++ -O2 -I$(SOPLEX_INCLUDE) -std=c++11 piecewise-small.cpp external/poly34.cpp  $(SOPLEX_LIB) -o piecewise-polygen -lgmp -lz -lm

clean:
	rm -f *~ polygen piecewise *.txt
 
