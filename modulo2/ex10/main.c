#include <stdio.h>
#include <inttypes.h>
#include "asm.h"

int op1, op2, op3;

int main(void) {
	
	printf("Valor op1:");
	scanf("%d",&op1);
	printf("Valor op2:");
	scanf("%d",&op2);
	printf("Valor op3:");
	scanf("%d",&op3);
	long long res = sum3ints();
	printf("Resultado: %lld\n", res);
	return 0;
}
