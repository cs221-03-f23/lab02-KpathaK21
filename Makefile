lab02: lab02.c
	gcc -g -o lab02 lab02.c
target: dependencies
	recipe to build target from dependencies
$ make
gcc -g -o lab02 lab02.c

$ make
make: 'lab02' is up to date.

foobar: foo.o bar.o
	gcc -g -o foobar foo.o bar.o
foo.o: foo.c
	gcc -c -g -o foo.o foo.c
bar.o: bar.c
	gcc -c -g -o bar.o bar.c
	
OBJS= foo.o bar.o

foo.o: foo.c
	gcc -c -g -o foo.o foo.c
bar.o: bar.c
	gcc -c -g -o bar.o bar.c
foobar: $(OBJS)
	gcc -c -g -o foobar $(OBJS)

OBJS = foo.o bar.o
PROG = foobar

%.o: %.c
	gcc -c -g -o $@ $<

$(PROG): $(OBJS)
	gcc -g -o $@ $^

OBJS = foo.o bar.o
PROG = foobar

%.o: %.c
	gcc -c -g -o $@ $<
	
$(PROG): $(OBJS)
	gcc -g -o $@ $^

clean:
	rm -rf $(OBJS) $(PROG)
