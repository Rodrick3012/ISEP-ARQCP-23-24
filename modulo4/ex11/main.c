#include <stdio.h>
#include "asm.h"

int main()
{
	int a = 4;
	int b = 5;
	int c = 6;
	int d = 1;
	int res = call_proc(a, b, c, d);
	printf("%d\n", res);
}

