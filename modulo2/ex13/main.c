#include <stdio.h>
#include "asm.h"

short length1 = 3, length2 = 5, height = 6;

int main()
{
	int res = getArea();
	printf("%d\n", res);
	return 0;
}
