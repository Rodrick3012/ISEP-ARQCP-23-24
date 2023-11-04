#include <stdio.h>
#include "asm.h"

int main()
{
	char str1[] = "abc";
	char str2[] = "def";
	char str3[20];
	
	char *ptr1 = str1;
	char *ptr2 = str2;
	char *ptr3 = str3;
	str_cat(ptr1, ptr2, ptr3);
	
	printf("%s\n", str3);
	return 0;
}

