#include <stdio.h>
#include "asm.h"

int main()
{
	int vec[] = {2, 3, 1, 2 , 2};
	int* ptr = vec;
	short num = 5;
	int i = vec_sum(ptr, num);
	int j = vec_avg(ptr, num);
	printf("sum: %d\n", i);
	printf("sum: %d\n", j);
	return 0;
}

