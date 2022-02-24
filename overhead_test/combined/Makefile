all: combined single combined2

single: singletest.c
	gcc -O2 -I../../include/float-rno/ -I../../include/ -I../../rlibm-32/include/  -I../../rlibm-rno/include/ singletest.c  ../../libm/floatproglibm.a  ../../rlibm-rno/lib/float34ROMathLib.a -lgmp -lm -o singletest


combined: CombinedTest.c
	gcc -O2 -I../../include/float-rno/ -I../../include/ -I../../rlibm-32/include/  -I../../rlibm-rno/include/ CombinedTest.c  ../../libm/floatproglibm.a  ../../rlibm-rno/lib/float34ROMathLib.a -lgmp -lm -o combined

combined2: CombinedTest2.c
	gcc -O2 -I../../include/float-rno/ -I../../include/ -I../../rlibm-32/include/  -I../../rlibm-rno/include/ CombinedTest2.c  ../../libm/floatproglibm.a  ../../rlibm-rno/lib/float34ROMathLib.a -lgmp -lm -o combined2

clean:
	rm -rf *~ combined combined2 singletest
