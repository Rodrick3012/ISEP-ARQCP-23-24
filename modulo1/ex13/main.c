#include <stdio.h>

int sort_without_reps(short *src, int n, short *dest) {
    short unique[n];
    int unique_count = 0;
    short *src_ptr = src;
    short *dest_ptr = dest;
    for (int i = 0; i < n; i++) {
        short current = *src_ptr;
        int is_duplicate = 0;
        for (int j = 0; j < unique_count; j++) {
            if (unique[j] == current) {
                is_duplicate = 1;
                break;
            }
        }
        if (!is_duplicate) {
            unique[unique_count] = current;
            unique_count++;
            *dest_ptr = current;
            dest_ptr++; 
        }
        src_ptr++;
    }
    for (int i = 0; i < unique_count - 1; i++) {
        for (int j = i + 1; j < unique_count; j++) {
            if (unique[i] > unique[j]) {
                short temp = unique[i];
                unique[i] = unique[j];
                unique[j] = temp;
            }
        }
    }
    for (int i = 0; i < unique_count; i++) {
        printf("%d ", dest[i]);
    }
    printf("\n");
    return unique_count;
}

int main() {
    short src[] = {3, 1, 2, 3, 2, 4, 5, 5};
    short dest[8];
    int num_unique = sort_without_reps(src, 8, dest);
    printf("%d\n", num_unique);
    return 0;
}

