#include <stdio.h>
#include "asm.h"

int main()
{
	short vec[] = {2, 3, 1, 2 , 3};
	short* ptr = vec;
	vec_add_three(ptr, 5);
	int i;
	for(i = 0; i < 5; i++){
		printf("%hd ", vec[i]);
	}
	printf("\n");
	return 0;
}

