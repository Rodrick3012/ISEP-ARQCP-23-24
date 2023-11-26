#include <stdio.h>

void add_byte(char x, int *vec1, int *vec2){
	
	int num = vec1[0];
	vec2[0] = num;
	
	for (int i = 1; i <= num; ++i) {
        char secondByte = (vec1[i] >> 8) & 0xFF;  // Extract the second byte of each element from vec1
        vec2[i] = (vec1[i] & 0xFFFF00FF) | ((secondByte + x) << 8); // Add x to the second byte and update vec2
    }
}
