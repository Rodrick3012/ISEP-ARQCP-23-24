#include <stdio.h>
#include "capitalize.h"

int main() {
    char myString[] = "Hello, World!";
    char* ptr = myString;
    printf("%s\n", myString);

    capitalize(ptr);

    printf("%s\n", myString);

    return 0;
}

