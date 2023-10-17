#include <stdio.h>
#include "ex20.h"

int main() {
	
	int vec_ints[6]={0x00010001,0x00010002,0x00010003,0x00010004,
	0x00010005,0x00010006};
	long vec_longs[3];
	compress(vec_ints, 6,vec_longs);

	// Imprime o conteúdo do array vec_longs
    for (int i = 0; i < 3; i++) {
        printf("vec_longs[%d] = %016lx\n", i, vec_longs[i]);
    }
/*
vec_longs[0]=0x0001000200010001,
vec_longs[1]=0x0001000400010003,
vec_longs[3]=0x0001000600010005,
*/

	
	

    return 0;
}
