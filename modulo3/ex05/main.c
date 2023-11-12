#include <stdio.h>
#include "asm.h"

int main()
{
	int vec[] = {2, 3, 1, 2 , 3};
	int* ptr = vec;
	short num = 5;
	int i = vec_sum(ptr, num);
	printf("sum: %d\n", i);
	return 0;
}

