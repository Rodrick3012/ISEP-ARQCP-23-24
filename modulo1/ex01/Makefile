# A simple MakeFile
ex1 : main.o
		gcc main.o -o ex1
	
main.o : main.c
		gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
		
clean:
		rm -f *.o ex1
		
run: ex1
		./ex1
