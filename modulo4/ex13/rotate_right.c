#include <stdio.h>

short rotate_right(short num, char nbits){
	nbits = nbits % 16; // Ensure that the nbits is in interval [0, 15]
	return (num >> nbits) | (num << (16 - nbits));
}

