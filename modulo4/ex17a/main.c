#include <stdio.h>
#include "asm.h"

int main()
{
	unsigned int date1 = 0x20040209;
	unsigned int date2 = 0x20231125;
	unsigned int res = greater_date(date1, date2);
	printf("0x%x\n", res);
	return 0;
}

