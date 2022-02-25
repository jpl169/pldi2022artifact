SOPLEX_INCLUDE=/filer/tmp1/sn349/soplex-4.0.1/src/
SOPLEX_LIB=/filer/tmp1/sn349/soplex-4.0.1/build/lib/libsoplex.a


all: polygen exact-polygen progressive-polygen filter  piecewise piecewise-progressive

polygen:main.cpp
	g++ -O2 -I$(SOPLEX_INCLUDE) -std=c++11 main.cpp $(SOPLEX_LIB) -o polygen -lgmp -lz -lm

exact-polygen:main-exact.cpp
	g++ -O2 -I$(SOPLEX_INCLUDE) -std=c++11 main-exact.cpp $(SOPLEX_LIB) -o exact-polygen -lgmp -lz -lm

filter:filter.cpp
	g++ -O2 -I$(SOPLEX_INCLUDE) -I../external/ -I../include/ -std=c++11 filter.cpp Utilities.cpp $(SOPLEX_LIB) -o filter -lgmp -lz -lm

progressive-polygen:main-progressive.cpp
	g++ -O3 -I$(SOPLEX_INCLUDE) -std=c++11 main-progressive.cpp Utilities.cpp $(SOPLEX_LIB) -o progressive-polygen -lgmp -lz -lm


piecewise: rlibm-fast.h piecewise-small.cpp
	g++ -O2 -I$(SOPLEX_INCLUDE) -std=c++11 piecewise-small.cpp  $(SOPLEX_LIB) -o piecewise-polygen -lgmp -lz -lm

piecewise-progressive: rlibm-fast.h progressive-piecewise-small.cpp
	g++ -O2 -I$(SOPLEX_INCLUDE) -std=c++11 progressive-piecewise-small.cpp  $(SOPLEX_LIB) -o progressive-piecewise-polygen -lgmp -lz -lm


clean:
	rm -f *~ polygen exact-polygen progressive-polygen filter *.txt piecewise-polygen piecewise-progressive-polygen
 
