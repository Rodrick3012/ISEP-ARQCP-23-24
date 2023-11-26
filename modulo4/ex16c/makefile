main: main.o  asm.o mixed_sum.o
	gcc main.o asm.o mixed_sum.o -z noexecstack -o main

main.o: main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

asm.o: asm.s
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o

mixed_sum.o: mixed_sum.s
	gcc -g -Wall -Wextra -fanalyzer -c mixed_sum.s -o mixed_sum.o
	
run: main
	./main

clean:
	rm *.o main
