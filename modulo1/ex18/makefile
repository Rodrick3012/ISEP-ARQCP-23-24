# A simple Makefile
prog_avg: ex18.o main.o
	gcc ex18.o main.o -o prog_avg
average.o: ex18.c
	gcc -g -Wall -Wextra -fanalyzer -c ex18.c -o ex18.o
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg
