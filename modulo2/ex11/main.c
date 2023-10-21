#include <stdio.h>
#include "asm.h"

int main()
{
	char res = verify_flags();
	printf("%d\n", res);
	return 0;
}
