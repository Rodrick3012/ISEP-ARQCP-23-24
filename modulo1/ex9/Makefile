# A simple MakeFile
ex9 : main.o
		gcc main.o -o ex9
	
main.o : main.c
		gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
		
clean:
		rm -f *.o ex9
		
run: ex9
		./ex9
