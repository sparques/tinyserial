PREFIX:=/usr/local

all:
	gcc -o com tinyserial.c

install:
	install com ${PREFIX}/bin