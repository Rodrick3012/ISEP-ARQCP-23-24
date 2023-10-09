#include <stdio.h>

void trim_string(char *str) {
    char *start = str;
    while (*start == ' ') {
        start++;
    }
    char *end = start;
    char *dest = str;
    while (*end) {
        if (*end != ' ') {
            *dest = *end;
            dest++;
        } else if (*(end + 1) != ' ' && *(end + 1) != '\0') {
            *dest = ' ';
            dest++;
        }
        end++;
    }
    *dest = '\0';
}

int main()
{
	char str[]= "     tHe     numBEr      must be      saved     ";
	trim_string(str);
	printf("%s\n", str);
	return 0;
}
