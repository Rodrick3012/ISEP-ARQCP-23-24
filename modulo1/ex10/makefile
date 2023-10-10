# A simple Makefile
prog_avg: ex10.o main.o
	gcc ex10.o main.o -o prog_avg
average.o: ex10.c
	gcc -g -Wall -Wextra -fanalyzer -c ex10.c -o ex10.o
main.o: main.c
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
clean:
	rm -f *.o prog_avg
run: prog_avg
	./prog_avg
