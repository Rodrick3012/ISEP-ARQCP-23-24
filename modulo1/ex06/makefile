# A simple Makefile
prog_avg: ex6.o main.o
	gcc ex6.o main.o -o prog_avg
average.o: ex6.c
	gcc -g -Wall -Wextra -fanalyzer -c ex6.c -o ex6.o
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg
