# Travis example for Modern C++ by Rafał Pocztarski
# For more languages and info see:
# https://github.com/rsp/travis-hello#readme

GCCFLAGS = -g -Wall -Wfatal-errors 
ALL = identifier
GCC = gcc

all: $(ALL)

hello: identifier.c
	$(GCC) $(GCCFLAGS) -o $@ $@.c

cov: identifier.c
	$(GCC) $(GCCFLAGS) -fprofile-arcs -ftest-coverage -o $@ identifier.c

clean:
	$(RM) $(ALL)   *.o

test: all
	bash test/test
