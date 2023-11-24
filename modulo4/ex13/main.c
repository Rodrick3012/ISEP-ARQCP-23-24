#include <stdio.h>
#include "asm.h"

int main()
{
	short num = 5;
	short res = rotate_left(num, 3);
	printf("%d\n", res);
	res = rotate_right(num, 3);
	printf("%d\n", res);
	return 0;
}

