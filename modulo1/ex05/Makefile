# A simple MakeFile
ex5 : sum_even.o main.o
		gcc sum_even.o main.o -o ex5
	
sum_even.o : sum_even.c
		gcc -g -Wall -Wextra -fanalyzer -c sum_even.c -o sum_even.o

main.o : main.c
		gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
		
clean:
		rm -f *.o ex5
		
run: ex5
		./ex5
