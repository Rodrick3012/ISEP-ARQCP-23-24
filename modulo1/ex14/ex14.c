#include <stdio.h>
#include "ex14.h"

int count_words(char *str) {
    int wordCount = 0;
    int inWord = 0; // 0 for false, 1 for true

    // Iterate through the string using a pointer
    while (*str != '\0') {
        if (*str == ' ' || *str == '\t' || *str == '\n' || *str == '\r') {
            // If we encounter a space or newline, it means the word has ended
            inWord = 0; // False
        } else {
            // If it's not a space, tab, or newline, it's a part of a word
            if (inWord == 0) {
                // If we were not in a word before, it means we are starting a new word
                inWord = 1; // True
                wordCount++;
            }
        }

        // Move the pointer to the next character
        str++;
    }

    return wordCount;
}

	
