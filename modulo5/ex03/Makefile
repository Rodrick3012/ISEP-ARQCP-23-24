main: main.o fill_student.o
	gcc main.o fill_student.o -z noexecstack -o main
	
main.o: main.c asm.h student.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
	
fill_student.o: fill_student.c student.h
	gcc -g -Wall -Wextra -fanalyzer -c fill_student.c -o fill_student.o
	
run: main
	./main
	
clean:
	rm ∗.o main
