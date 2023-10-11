#include <stdio.h>

int main()
{
	int x = 5; 
	int* ptr_x = &x; 
	float y = *ptr_x+3;
	
	printf("%d\n", x); // 5
    printf("%f\n", y); // 8.000000
	printf("%x\n", &x); // a1cf5bcc
	printf("%x\n", &y); // a1cf5bbc
	printf("%x\n", &ptr_x); // a1cf5bc0
	printf("%p\n", ptr_x); // 0x7fffa1cf5bcc
	printf("%d\n", *ptr_x); // 5
	
	int vec[]={10,20,30,40}; 
	int* ptr_vec =vec; 
	int z = *ptr_vec; 
	int h = *(ptr_vec+3);
	
	printf("%d\n", z); // 10
	printf("%d\n", h); // 40
	printf("%x\n", &vec); // 16112c90
	printf("%x\n", &ptr_vec); // 16112c88
	printf("%p\n", ptr_vec); // 0x7fff16112c90
	printf("%p\n", vec); // 0x7fff16112c90 
	printf("%d\n", *ptr_vec); // 10
	
	// The address of vec and the value of ptr_vec are the same, since ptr_vec is pointing to the first position of vec. 
	// The first position is used to point the vec.
	
	int i; 
	for(i=0;i<4;i++){ 
		printf("1:%p,%d\t",&vec[i],vec[i]);  
	}
	printf("\n");
	for(ptr_vec=vec; ptr_vec<vec+4; ptr_vec++){ 
		printf("2:%p,%d\t",ptr_vec,*ptr_vec); 
	} 
	printf("\n"); 
	for(ptr_vec=vec+3; ptr_vec>=vec; ptr_vec--){ 
		printf("3:%p,%d\t",ptr_vec,*ptr_vec); 
	}
	
	// 1:0x7ffe579f8900,10	1:0x7ffe579f8904,20	1:0x7ffe579f8908,30	1:0x7ffe579f890c,40	
    // 2:0x7ffe579f8900,10	2:0x7ffe579f8904,20	2:0x7ffe579f8908,30	2:0x7ffe579f890c,40	
    // 3:0x7ffe579f890c,40	3:0x7ffe579f8908,30	3:0x7ffe579f8904,20	3:0x7ffe579f8900,10
	
	// ptr++ and ptr-- : It will add and subtract the position of ptr_vec considered the value of the integer in C on the x86-64 architecture which is 4, respectively.
	
	int a;
	printf("\n");
	ptr_vec=vec;
	printf("4:%p,%d\n",ptr_vec,*ptr_vec);
	a=*ptr_vec++;
	printf("5:%p,%d,%d\n",ptr_vec,*ptr_vec,a);
	ptr_vec=vec;
	a=(*ptr_vec)++;
	printf("6:%p,%d,%d\n",ptr_vec,*ptr_vec,a);
	ptr_vec=vec; a=*++ptr_vec;
	printf("7:%p,%d,%d\n",ptr_vec,*ptr_vec,a);
	ptr_vec=vec; a=++*ptr_vec;
	printf("8:%p,%d,%d\n",ptr_vec,*ptr_vec,a);
	printf("\n");
	for(ptr_vec=vec;ptr_vec<vec+4;ptr_vec++){ 
		printf("9:%p,%d\t",ptr_vec,*ptr_vec); 
	}
	
	// 4:0x7ffeea840d60,10
	// 5:0x7ffeea840d64,20,10
	// 6:0x7ffeea840d60,11,10
	// 7:0x7ffeea840d64,20,20
	// 8:0x7ffeea840d60,12,12
	// 
	// 9:0x7ffeea840d60,12	9:0x7ffeea840d64,20	9:0x7ffeea840d68,30	9:0x7ffeea840d6c,40
	
	printf("\n");
	unsigned int d=0xAABBCCDD; 
	printf("10:%p,%x\t",&d,d);
	printf("\n");
	unsigned char* ptr_d=(unsigned char*)&d;
	unsigned char* p;
	for(p=ptr_d;p<ptr_d+sizeof(unsigned int);p++){
		printf("11:%p,%x\t",p,(unsigned char)* p);
	}
	
	// 10:0x7fff47581404,aabbccdd	
	// 11:0x7fff47581404,dd	11:0x7fff47581405,cc	11:0x7fff47581406,bb	11:0x7fff47581407,aa
	
	return 0;
}
