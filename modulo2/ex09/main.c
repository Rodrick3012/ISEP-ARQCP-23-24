#include <stdio.h>
#include "asm.h"

int main()
{
	long res = sum_and_subtract();
	printf("%ld:0x%lx", res, res);
	return 0;
}

