#include <stdio.h>

void changes(int *ptr) {
    
    unsigned int mask = 0xFF00; 
    int num = *ptr; 
    num = num & mask; 
    num = num >> 8;

    if (num > 15) { 
        mask = 0x00FF0000; 
        *ptr = *ptr ^ mask;
    }
}

