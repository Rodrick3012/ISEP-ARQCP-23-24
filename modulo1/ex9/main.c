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

int main()
{
	unsigned int d=0xAABBCCDD; 
	int r= sum_integer_bytes(&d); // r = 0xDD+0xCC+0xBB+0xAA =782
	printf("%d\n", r);
}

