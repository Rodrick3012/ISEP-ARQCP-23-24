main: main.o asm.o 
	gcc main.o asm.o -z noexecstack -o main
	
main.o: main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
asm.o: asm.c
	gcc -g -Wall -Wextra -fanalyzer -c asm.c -o asm.o
	
run: main
	./main
	
clean:
	rm ∗.o main
