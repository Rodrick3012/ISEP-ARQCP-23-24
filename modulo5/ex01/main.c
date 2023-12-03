#include <stdio.h>

union union_u1 {
	char vec[32];
	float a;
	int b;
} u;

struct struct_s1 {
	char vec[32];
	float a;
	int b;
} s;

void printSizes(){
	printf("%ld\n", sizeof(u)); // The size of union is the size of the largest structure, which is vec.
	printf("%ld\n", sizeof(s)); // The size of struct is the sum of the size of all structures.
}

int main(){
	printSizes();
	return 0;
}
