#include <stdio.h>
#include "capitalize.h"

int main() {
    char myString[] = "Hello, World!";
    printf("%s\n", myString);

    capitalize(myString);

    printf("%s\n", myString);

    return 0;
}

