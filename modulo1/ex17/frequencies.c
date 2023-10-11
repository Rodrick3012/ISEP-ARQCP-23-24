#include <stdio.h>

void frequencies(float *grades, int n, int* freq){
	int i;
	for(i = 0; i < n; i++){
		int integerPart = (int) *(grades + i); // Cast the float value of grades to integer value of frequencies. 
		freq[integerPart]++; // Increments the value of frequencies in the integer value.
	}
}

