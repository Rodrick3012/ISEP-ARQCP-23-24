#include <stdio.h>
#include "asm.h"

int A = 9;
char B = 3;
short C = 1;
short D = 3;

int main()
{
	long res = sum_and_subtract();
	printf("%ld\n", res);
	return 0;
}

