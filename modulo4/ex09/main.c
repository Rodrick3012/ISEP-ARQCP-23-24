#include <stdio.h>
#include "asm.h"

void print_result(char op, int o1, int o2, int res) {
	
	printf("%d %c %d = %d\n", o1, op, o2, res);
	
}

int main()
{
	int resultado = calculate(2, 6);
	printf("%d\n", resultado);
	return 0;
}

