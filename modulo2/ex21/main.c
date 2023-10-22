#include <stdio.h>
#include "asm.h"

short code = 15, currentSalary = 2000;

int main()
{
	int res = new_salary();
	printf("%d\n", res);
}

