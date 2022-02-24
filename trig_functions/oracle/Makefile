all: test_sin

test_sin: test_sin_oracle.c
	gcc -g -std=c11 test_sin_oracle.c -o test_sin_oracle -lmpfr

clean:
	rm -rf *~ test_sin_oracle
