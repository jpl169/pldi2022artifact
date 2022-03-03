CC = gcc

funcNames = sample

src = $(patsubst %, %.c, $(funcNames))
obj = $(patsubst %, %, $(funcNames))

all: $(obj)

%: %.c
	$(CC) -I../include -std=c11 $^ ../libm/floatproglibm.a -lm -o $@

clean:
	rm -rf $(obj) *.dSYM
