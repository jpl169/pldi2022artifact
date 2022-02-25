SOPLEX_INCLUDE=/filer/tmp1/sn349/soplex-4.0.1/src/
SOPLEX_LIB=/filer/tmp1/sn349/soplex-4.0.1/build/lib/libsoplex.a


all: log


log: ../rlibm-fast.h piecewise-small-log.cpp
	g++ -O2 -mavx2 -mfma -I$(SOPLEX_INCLUDE) -I../ -std=c++11 piecewise-small-log.cpp  $(SOPLEX_LIB) -o piecewise-log -lgmp -lz -lm


clean:
	rm -f *~ piecewise-log
 
