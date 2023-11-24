#include <stdio.h>
#include "asm.h"

int main()
{
	long a = 1342;
	char left = 20;
	char right = 40;
	long res = reset_bits(a, left, right);
	printf("%ld\n", res);
	return 0;
}

