main: main.o  asm.o vec_count_bits_zero.o
	gcc main.o asm.o vec_count_bits_zero.o -z noexecstack -o main

main.o: main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o

asm.o: asm.s
	gcc -g -Wall -Wextra -fanalyzer -c asm.s -o asm.o

vec_count_bits_zero.o: vec_count_bits_zero.s
	gcc -g -Wall -Wextra -fanalyzer -c vec_count_bits_zero.s -o vec_count_bits_zero.o


run: main
	./main

clean:
	rm *.o main
