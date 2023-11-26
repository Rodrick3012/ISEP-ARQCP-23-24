#include <stdio.h>
#include "asm.h"

int main()
{
	int vec1[] = {3, 0xFFF01342, 0xFF145211, 0xFF234231};
	int vec2[4];
	add_byte(3, vec1, vec2);
	int i;
	for(i = 0; i < 4; i++){
		printf("0x%x ", vec2[i]);
	}
	printf("\n");
	return 0;
}

