#include <stdio.h>
#include "sort_without_reps.h"

int main() {
    short src[] = {3, 1, 2, 3, 2, 4, 5, 5};
    short dest[8];
    int num_unique = sort_without_reps(src, 8, dest);
    printf("%d\n", num_unique);
    return 0;
}

