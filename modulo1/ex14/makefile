# A simple Makefile
prog_avg: ex14.o main.o
	gcc ex14.o main.o -o prog_avg
average.o: ex14.c
	gcc -g -Wall -Wextra -fanalyzer -c ex14.c -o ex14.o
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg
