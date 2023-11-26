#include <stdio.h>
#include "asm.h"

int main()
{
	int vec[] = {1, 2, 3, 4, 5};
	int* ptr = vec;
	int num = 5;
	int x = 6;
	int* res =vec_search (ptr, num, x);
	printf("%p\n", res);
	return 0;
}

