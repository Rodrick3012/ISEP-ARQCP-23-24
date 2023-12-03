#include <stdio.h>
#include "asm.h"

int main()
{
	s1 vs1;
	fill_s1(&vs1, 12, 'A', 45, 'Z');
	
	printf("%d\n", vs1.i);
	printf("%c\n", vs1.c);
	printf("%c\n", vs1.d);
	printf("%d\n", vs1.j);
	
	return 0;
}

