#include <stdio.h>
#include "asm.h"

int main()
{
	long a = 0xFFFF234122134114;
	char left = 1;
	char right = 3;
	long res = reset_invert_bits(a, left, right);
	printf("0x%lx\n", res);
	return 0;
}

