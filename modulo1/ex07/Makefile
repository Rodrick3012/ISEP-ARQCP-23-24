# A simple MakeFile
ex7 : get_array_statistics.o main.o
		gcc get_array_statistics.o main.o -o ex7
	
get_array_statistics.o : get_array_statistics.c
		gcc -g -Wall -Wextra -fanalyzer -c get_array_statistics.c -o get_array_statistics.o

main.o : main.c
		gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
		
clean:
		rm -f *.o ex7
		
run: ex7
		./ex7
