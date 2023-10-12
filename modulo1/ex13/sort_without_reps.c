#include <stdio.h>

int sort_without_reps(short *src, int n, short *dest) {
    short unique[n]; // Initialize the array of unique numbers
    short* ptr_unique = unique;
    int unique_count = 0; // Initialize the counter of unique numbers
    short *src_ptr = src; // Point to the pointer of array
    short *dest_ptr = dest; // Point to the pointer of destiny
    int i;
    int j;
    for (i = 0; i < n; i++) {
		int is_duplicate = 0; // Create a boolean to check for duplicates
		for (j = 0; j < unique_count; j++) {
			if (*(ptr_unique + j) == *src_ptr) {
				is_duplicate = 1; // The number is duplicated in the array
				break;
			}
		}
		if (!is_duplicate) {
			*(ptr_unique + unique_count) = *src_ptr; // Put the unique number in the array
			unique_count++; // Count the unique number 
			*dest_ptr = *src_ptr; // Save the number in the destiny array
            dest_ptr++; // Increment the pointer of destiny
		}
		src_ptr++; // Increment the pointer of src
    }
    int k;
	int l;
	for (k = 0; k < unique_count - 1; k++) {
		for (l = k + 1; l < unique_count; l++) {
			if (*(ptr_unique+k) > *(ptr_unique+l)) { // Swap the elements to sort in ascending order
				short temp = *(ptr_unique+k);
				*(ptr_unique+k) = *(ptr_unique+l);
				*(ptr_unique+l) = temp;
			}
		}
	}
    int m;
    for (int m = 0; m < unique_count; m++) {
        *(dest + m) = *(ptr_unique + m); // Copy the unique elements to destiny array
    }
    return unique_count;
}

