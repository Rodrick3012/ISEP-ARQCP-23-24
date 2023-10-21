#include <stdio.h>
#include "asm.h"

short s1 = 0;

int main()
{
	scanf("%hd", s1);
	short res = swapBytes();
	printf("%hd", res);
	return 0;
}

