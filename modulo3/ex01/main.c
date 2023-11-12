#include <stdio.h>
#include "asm.h"

int main() {
	char s1[] = "55555";
	char* ptr1 = s1;
	
	printf("Initial: %s\n", s1);
	int result = five_count(ptr1);
	printf("Result: %d\n", result);
	
	
	return 0;
	
}

