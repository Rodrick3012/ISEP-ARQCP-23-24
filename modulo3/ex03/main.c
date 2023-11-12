#include <stdio.h>
#include "asm.h"

int main() {
	char s1[] = "huU";
	char s2[20];
	char* ptr1 = s1;
	char* ptr2 = s2;
	printf("Initial: %s\n", s1);
	str_copy_roman2(ptr1, ptr2);
	printf("End: %s\n", s2);
}


