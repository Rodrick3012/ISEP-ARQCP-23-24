# A simple Makefile
prog_avg: ex16.o main.o
	gcc ex16.o main.o -o prog_avg
average.o: ex16.c
	gcc -g -Wall -Wextra -fanalyzer -c ex16.c -o ex16.o
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg
