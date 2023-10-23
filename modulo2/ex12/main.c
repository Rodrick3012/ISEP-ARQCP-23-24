#include <stdio.h>
#include <inttypes.h>
#include "asm.h"

long A, B;

int main(void) {
	
	printf("Valor op1:");
	scanf("%ld",&A);
	printf("Valor op2:");
	scanf("%ld",&B);
	char res = char isMultiple();
	if(res==1)
	printf("Resultado: %c\n", res);
	return 0;
}
