#include <stdio.h>
#include "asm.h"

short s1;

int main()
{
	scanf("%hd", &s1);
	printf("%hd:0x%hx\n", s1, s1);
	short res = swapBytes();
	printf("%hd:0x%hx\n", res, res);
	return 0;
}

