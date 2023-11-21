#include <stdio.h>
#include "asm.h"

int main()
{
	int vec[] = {1, 30, 34, 50, 20, 1};
	int* ptr = vec;
	unsigned char res = vec_zero(ptr, 6);
	int i;
	for(i = 0; i < 6; i++){
		printf("%d ", vec[i]);
	}
	printf("\n%d\n", res);
}

