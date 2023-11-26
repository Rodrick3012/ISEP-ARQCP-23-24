#include <stdio.h>
#include "asm.h"

int main()
{
	char a[] = "ab";
	char b[] = "aa";
	int res = distance(a, b);
	printf("%d\n", res);
	return 0;
}

