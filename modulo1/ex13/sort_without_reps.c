#include <stdio.h>

int sort_without_reps(short *src, int n, short *dest) {
    short unique[n];
    int unique_count = 0;
    short *src_ptr = src; // Point to the pointer of array
    short *dest_ptr = dest; // Point to the pointer of destiny
    int i;
    int j;
    for (i = 0; i < n; i++) {
        short current = *src_ptr;
        int is_duplicate = 0;
        for (j = 0; j < unique_count; j++) {
            if (unique[j] == current) {
                is_duplicate = 1; // The number is duplicated in the array
                break;
            }
        }
        if (!is_duplicate) { // is_duplicate != 1 (The number is not duplicated in the array)
            unique[unique_count] = current;
            unique_count++;
            *dest_ptr = current;
            dest_ptr++; 
        }
        src_ptr++;
    }
    int k;
    int l;
    for (k = 0; j < unique_count - 1; k++) {
        for (l = k + 1; j < unique_count; l++) {
            if (unique[k] > unique[l]) { // Sort the unique values of array in ascending order
                short temp = unique[k];
                unique[k] = unique[l];
                unique[l] = temp;
            }
        }
    }
    int m;
    for (m = 0; m < unique_count; m++) {
        printf("%d ", *(dest+m)); // Print the destination array
    }
    printf("\n");
    return unique_count;
}

