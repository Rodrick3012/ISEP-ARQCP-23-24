# A simple MakeFile
ex11 : main.o
		gcc main.o -o ex11
	
main.o : main.c
		gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
		
clean:
		rm -f *.o ex11
		
run: ex11
		./ex11
