# A simple MakeFile
ex9 : sum_integer_bytes.o main.o
		gcc sum_integer_bytes.o main.o -o ex9

sum_integer_bytes.o : sum_integer_bytes.c
		gcc -g -Wall -Wextra -fanalyzer -c sum_integer_bytes.c -o sum_integer_bytes.o
		
main.o : main.c
		gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
		
clean:
		rm -f *.o ex9
		
run: ex9
		./ex9
