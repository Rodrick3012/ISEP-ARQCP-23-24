#include <stdio.h>
#include "asm.h"

int main()
{
	char vec[] = {"Ifmmp- xpasme"};
	char* ptr = vec;
	int res =decrypt(ptr);
	printf("%s\n", vec);
	printf("%d\n", res);
	return 0;
}

