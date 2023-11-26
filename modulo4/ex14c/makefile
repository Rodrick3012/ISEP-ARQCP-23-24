main: main.o  asm.o set_2bits.o
	gcc main.o asm.o set_2bits.o -z noexecstack -o main

main.o: main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

asm.o: asm.s
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o

set_2bits.o: set_2bits.s
	gcc -g -Wall -Wextra -fanalyzer -c set_2bits.s -o set_2bits.o
	
run: main
	./main

clean:
	rm *.o main
