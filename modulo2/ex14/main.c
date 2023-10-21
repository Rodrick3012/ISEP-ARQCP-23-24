#include <stdio.h>
#include "asm.h"

int length1, length2, height;

int main()
{
	length1 = 3;
	length2 = 5;
	height = 6;
	int res = getArea();
	printf("%d\n", res);
	return 0;
}
