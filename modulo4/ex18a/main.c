#include <stdio.h>
#include "asm.h"

int main(){
    
    int num = 0x11223344; // Example integer value
    printf("Original integer value: 0x%08X\n", num);

    changes(&num);
    printf("After inverting the third byte if the fourth byte > 15: 0x%08X\n", num);

    return 0;

    return 0;
}
