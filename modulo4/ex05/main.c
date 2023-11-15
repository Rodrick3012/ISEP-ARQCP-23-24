#include <stdio.h>
#include "asm.h"

int main()
{
	short a = 4;
	short* v1 = &a;
	long res = inc_and_cube(v1, 3);
	printf ("%d\n%ld\n", a, res); 
	return 0;
}

