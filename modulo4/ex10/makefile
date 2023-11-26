main: main.o asm.o decr.o
	gcc main.o asm.o decr.o -z noexecstack -o main

main.o: main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

asm.o: asm.s
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o
	
decr.o: decr.s
	gcc -g -Wall -Wextra -fanalyzer -c decr.s -o decr.o


run: main
	./main

clean:
	rm *.o main
