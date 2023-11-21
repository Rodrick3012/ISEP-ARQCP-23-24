#include <stdio.h>
#include "asm.h"

int main()
{
	short vec[] = {10, 4, 5, 7, 10, 23};
	short *ptr_vec = vec;
	int res = count_even(ptr_vec, 6);
	printf("%d\n", res);
}

