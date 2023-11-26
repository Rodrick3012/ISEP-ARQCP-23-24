#include <stdio.h>
#include "asm.h"


int main() {
    int num = 0xff8ff0ff;
    int *ptr = &num;
    changes(ptr);
    printf("%d\n", *ptr);
    return 0;
}
