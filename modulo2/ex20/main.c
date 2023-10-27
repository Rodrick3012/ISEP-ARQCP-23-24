#include <stdio.h>
#include <inttypes.h>
#include "asm.h"

short num;

int main(void) {
	
	printf("Valor num:");
	scanf("%d",&num);
	char res = check_num();
	printf("Resultado: %d\n", res);
	return 0;
}
