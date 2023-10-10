# A simple Makefile
prog_avg: ex4.o main.o
	gcc ex4.o main.o -o prog_avg
average.o: ex4.c
	gcc -g -Wall -Wextra -fanalyzer -c ex4.c -o ex4.o
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg
