main: main.o fill_s1.o
	gcc main.o fill_s1.o -z noexecstack -o main
	
main.o: main.c asm.h s1.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
fill_s1.o: fill_s1.s s1.h
	gcc -g -Wall -Wextra -fanalyzer -c fill_s1.s -o fill_s1.o
	
run: main
	./main
	
clean:
	rm ∗.o main
