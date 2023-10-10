#include <stdio.h>

int sum_integer_bytes(unsigned int* p){
	unsigned char* ptr = (unsigned char*)p;
	int sum = 0;
	int i;
	for(i = 0 ; i < sizeof(unsigned int) ; i++){
		sum += *ptr;
		ptr++;
	}
	return sum;
}
