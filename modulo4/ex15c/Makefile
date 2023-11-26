main: main.o reset_bits.o reset_invert_bits.o
	gcc main.o reset_bits.o reset_invert_bits.o -z noexecstack -o main
	
main.o: main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
reset_bits.o: reset_bits.s
	gcc -g -Wall -Wextra -fanalyzer -c reset_bits.s -o reset_bits.o
	
reset_invert_bits.o: reset_invert_bits.s
	gcc -g -Wall -Wextra -fanalyzer -c reset_invert_bits.s -o reset_invert_bits.o
	
run: main
	./main
	
clean:
	rm ∗.o main
