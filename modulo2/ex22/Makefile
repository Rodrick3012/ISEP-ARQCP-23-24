main: main.o f.o f2.o f3.o f4.o
	gcc main.o f.o f2.o f3.o f4.o -z noexecstack -o main
main.o: main.c asm.h
	gcc -g -Wall -Wextra -fanalyzer -c main.c -o main.o
f.o: f.s
	gcc -g -Wall -Wextra -fanalyzer -c f.s -o f.o
f2.o: f2.s
	gcc -g -Wall -Wextra -fanalyzer -c f2.s -o f2.o
f3.o: f3.s
	gcc -g -Wall -Wextra -fanalyzer -c f3.s -o f3.o
f4.o: f4.s
	gcc -g -Wall -Wextra -fanalyzer -c f4.s -o f4.o	
run: main
	./main
clean:
	rm ∗.o main
