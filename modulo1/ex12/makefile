# A simple Makefile
prog_avg: ex12.o main.o
	gcc ex12.o main.o -o prog_avg
average.o: ex12.c
	gcc -g -Wall -Wextra -fanalyzer -c ex12.c -o ex12.o
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg
