#include <stdio.h>
#include "asm.h"

short op1 = 10, op2 = 1;

int main()
{
	char res = verify_flags();
	printf("%d\n", res);
	return 0;
}
