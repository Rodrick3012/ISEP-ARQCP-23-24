#include <stdio.h>
#include <inttypes.h>
#include "asm.h"

int op1=0, op2=0;

int main(void) {
	
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	long res = yet_another_sum();
	printf("Resultado: %ld\n", res);
	return 0;
}
