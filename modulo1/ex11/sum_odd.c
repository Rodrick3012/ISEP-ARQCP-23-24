#include <stdio.h>

int sum_odd(int* p){
	int n = *p; // The first number of the array is the size of array.
	int sum = 0;
	int i;
	for(i = 1; i <= n; i++){ // Start with the next number in array
		if(*(p+i) % 2 != 0){ // Verifies that the number is odd
			sum += *(p+i); // Sum all odd numbers in array
		}
	}
	return sum;
}

