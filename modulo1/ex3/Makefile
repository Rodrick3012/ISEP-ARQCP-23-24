# A simple MakeFile
ex3 : capitalize.o main.o
		gcc capitalize.o main.o -o ex3
	
capitalize.o: capitalize.o
		gcc -g -Wall -Wextra -fanalyzer -c capitalize.c -o capitalize.o
		
main.o : main.c
		gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
		
clean:
		rm -f *.o ex3
		
run: ex3
		./ex3
