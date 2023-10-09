# A simple MakeFile
ex13 : main.o
		gcc main.o -o ex13
	
main.o : main.c
		gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
		
clean:
		rm -f *.o ex13
		
run: ex13
		./ex13
