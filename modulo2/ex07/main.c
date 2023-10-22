#include <stdio.h>
#include <inttypes.h>
#include "asm.h"

short op1=0, op2=0;

int main(void) {
	
	printf("Valor op1:");
	scanf("%hd",&op1);
	printf("Valor op2:");
	scanf("%hd",&op2);
	short res = crossSubBytes();
	printf("Resultado: %hd\n", res);
	return 0;
}
