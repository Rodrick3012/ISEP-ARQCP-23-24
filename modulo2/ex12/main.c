#include <stdio.h>
#include <inttypes.h>
#include "asm.h"

long A, B;

int main(void) {
	
	printf("Valor A:");
	scanf("%ld",&A);
	printf("Valor B:");
	scanf("%ld",&B);
	char res = isMultiple();
	printf("Resultado: %d\n", res);
	return 0;
}
