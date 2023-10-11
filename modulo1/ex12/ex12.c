#include <stdio.h>
#include "ex12.h"

void array_sort(int *vec, int n) {
    int *ptr;
    int temp;
    int swapped;

    if (n <= 1) {
        // No need to sort an array with 0 or 1 element
        return;
    }

    for (int i = 0; i < n - 1; i++) {
        swapped = 0;  // Initialize swapped to 0 (no swaps yet)
        ptr = vec;    // Reset the pointer to the beginning of the array

        for (int j = 0; j < n - i - 1; j++) {
            if (*ptr > *(ptr + 1)) {
                // Swap the elements using pointer arithmetic
                temp = *ptr;
                *ptr = *(ptr + 1);
                *(ptr + 1) = temp;
                swapped = 1;  // Set swapped to 1 to indicate a swap
            }
            ptr++;  // Move the pointer to the next element
        }

        // If no two elements were swapped in this pass, the array is already sorted
        if (swapped == 0) {
            break;
        }
    }
}
