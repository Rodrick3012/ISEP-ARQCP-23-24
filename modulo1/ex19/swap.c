#include <stdio.h>

void swap(short *vec1, short *vec2, int size){
	int i;
	for (i = 0; i < size; i++){
		short temp = *(vec1+i); // Save the vec1 number in the temp initialized
		*(vec1+i) = *(vec2+i); // Swaps the vec1 number with the vec2 number
		*(vec2+i) = temp; // Equals the vec2 number with the temp
	}
}

