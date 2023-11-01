#include <stdio.h>
#include "asm.h"

int main()
{
	char vec[] = "Hello, woarld!";
	char* ptr = vec;
	int res = encrypt(ptr);
	printf("%s\n", vec);
	printf("%d\n", res);
	return 0;
}

