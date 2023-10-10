# A simple Makefile
prog_avg: ex8.o main.o
	gcc ex8.o main.o -o prog_avg
average.o: ex8.c
	gcc -g -Wall -Wextra -fanalyzer -c ex8.c -o ex8.o
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg
