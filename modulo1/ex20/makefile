# A simple Makefile
prog_avg: ex20.o main.o
	gcc ex20.o main.o -o prog_avg
average.o: ex20.c
	gcc -g -Wall -Wextra -fanalyzer -c ex20.c -o ex20.o
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg
