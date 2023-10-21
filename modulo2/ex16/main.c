#include <stdio.h>
#include "asm.h"

int op1 = 10, op2 = 3;

int main()
{
	int sum_res = sum();
	int sub_res = subtraction();
	int mul_res = multiplication();
	int div_res = division();
	int mod_res = modulus();
	int p2_res = power_of_2();
	int p3_res = power_of_3();
	
	printf("%d\n", sum_res);
	printf("%d\n", sub_res);
	printf("%d\n", mul_res);
	printf("%d\n", div_res);
	printf("%d\n", mod_res);
	printf("%d\n", p2_res);
	printf("%d\n", p3_res);
}
