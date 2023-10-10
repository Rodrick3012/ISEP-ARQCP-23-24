#include <stdio.h>
#include "trim_string.h"

int main()
{
	char str[]= "     tHe     numBEr      must be      saved     ";
	trim_string(str);
	printf("%s\n", str);
	return 0;
}
