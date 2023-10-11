#include <stdio.h>

void capitalize(char* str) {
    if (str == NULL) {
        return;
    }
    int i;
    for (i = 0; *(str+i) != '\0'; i++) {
        if (*(str+i) >= 'a' && *(str+i) <= 'z') {
            *(str+i) = *(str+i) - ('a' - 'A'); // Capitalize all chars in the string
        }
    }
}

