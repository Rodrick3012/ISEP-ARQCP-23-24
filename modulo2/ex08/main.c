#include <stdio.h>
#include <inttypes.h>
#include "asm.h"



int main(void) {
	
	printf("Valor s1:");
	scanf("%hd",&s1);
	printf("Valor s2:");
	scanf("%hd",&s2);
	short res = crossSubBytes();
	printf("Resultado: %hd\n", res);
	return 0;
}
