# A simple MakeFile
ex17 : main.o
		gcc main.o -o ex17
	
main.o : main.c
		gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
		
clean:
		rm -f *.o ex17
		
run: ex17
		./ex17
