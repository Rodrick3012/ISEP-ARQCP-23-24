#include <stdio.h>

void trim_string(char *str) {
    char *start = str;
    while (*start == ' ') {
        start++; // Deletes the intial spaces on the string
    }
    char *end = start;
    char *dest = str;
    while (*end) {
        if (*end != ' ') {
            *dest = *end; // Deletes the final spaces on the string
            dest++;
        } else if (*(end + 1) != ' ' && *(end + 1) != '\0') {
            *dest = ' '; // Deletes the median spaces and only put one space between the words
            dest++;
        }
        end++;
    }
    *dest = '\0'; // Terminates the destiny
}

