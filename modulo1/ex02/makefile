# A simple Makefile
prog_avg: ex2.o main.o
	gcc ex2.o main.o -o prog_avg
average.o: ex2.c
	gcc -g -Wall -Wextra -fanalyzer -c ex2.c -o ex2.o
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg
