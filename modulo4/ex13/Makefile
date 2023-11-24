main: main.o rotate_left.o rotate_right.o
	gcc main.o rotate_left.o rotate_right.o -z noexecstack -o main
	
main.o: main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
rotate_left.o: rotate_left.c
	gcc -g -Wall -Wextra -fanalyzer -c rotate_left.c -o rotate_left.o
	
rotate_right.o: rotate_right.c
	gcc -g -Wall -Wextra -fanalyzer -c rotate_right.c -o rotate_right.o
	
run: main
	./main
	
clean:
	rm ∗.o main
