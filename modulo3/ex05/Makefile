main: main.o vec_sum.o vec_avg.o
	gcc main.o vec_sum.o vec_avg.o -z noexecstack -o main
	
main.o: main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
vec_sum.o: vec_sum.s
	gcc -g -Wall -Wextra -fanalyzer -c vec_sum.s -o vec_sum.o
	
vec_avg.o: vec_avg.s
	gcc -g -Wall -Wextra -fanalyzer -c vec_avg.s -o vec_avg.o
	
run: main
	./main
	
clean:
	rm ∗.o main
