#include <stdio.h>

int sum_integer_bytes(unsigned int* p){
	unsigned char* ptr = (unsigned char*)p; // Initialize a pointer with casting the value of p to unsigned char
	int sum = 0;
	int i;
	for(i = 0 ; i < sizeof(unsigned int) ; i++){
		sum += *ptr; // Sum all bytes of the number
		ptr++; // Increments the pointer
	}
	return sum;
}
