#include <stdio.h>
#include <inttypes.h>
#include "asm.h"

short s1=0, s2=0;

int main(void) {
	
	printf("Valor s1:");
	scanf("%hd",&s1);
	printf("Valor s2:");
	scanf("%hd",&s2);
	short res = crossSubBytes();
	printf("Resultado: %hd\n", res);
	return 0;
}
