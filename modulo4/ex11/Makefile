main: main.o proc.o call_proc.o 
	gcc main.o proc.o call_proc.o -z noexecstack -o main
	
main.o: main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
proc.o: proc.s
	gcc -g -Wall -Wextra -fanalyzer -c proc.s -o proc.o
	
call_proc.o: call_proc.s
	gcc -g -Wall -Wextra -fanalyzer -c call_proc.s -o call_proc.o
	
run: main
	./main
	
clean:
	rm ∗.o main
