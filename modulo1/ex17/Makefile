# A simple MakeFile
ex17 : frequencies.o main.o
		gcc frequencies.o main.o -o ex17
	
frequencies.o : frequencies.c
		gcc -g -Wall -Wextra -fanalyzer -c frequencies.c -o frequencies.o

main.o : main.c
		gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
		
clean:
		rm -f *.o ex17
		
run: ex17
		./ex17
