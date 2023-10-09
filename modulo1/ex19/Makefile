# A simple MakeFile
ex19 : main.o
		gcc main.o -o ex19
	
main.o : main.c
		gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
		
clean:
		rm -f *.o ex19
		
run: ex19
		./ex19
