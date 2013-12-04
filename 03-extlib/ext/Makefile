all: libadd.a

libadd.a: add.o
	$(AR) $(ARFLAGS) libadd.a add.o

add.o: add.c add.h
	$(COMPILE.c) add.c

clean:
	$(RM) add.o libadd.a

.PHONY: all clean
