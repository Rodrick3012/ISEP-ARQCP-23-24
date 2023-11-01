#include <stdio.h>
#include "asm.h"

int main() {
	char s1[] = "Hello, wourld!";
	char s2[20];
	char* ptr_s1 = s1;
	char* ptr_s2 = s2;
	printf("Initial: %s\n", s1);
	str_copy_roman(ptr_s1, ptr_s2);
	printf("End: %s\n", s2);
}

