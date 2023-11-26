#include <stdio.h>
#include "asm.h"

int main()
{
	int vec []= {13, 2, 14, 2, 15};
	int* ptr = vec;
	int num=5;
	int res = vec_greater12(ptr, num);
	printf("%d\n", res);
	return 0;
}

