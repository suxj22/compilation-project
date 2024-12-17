#include <stdio.h>
int main() {  
    int a[5];  
    a[0] = 10;  
    int b = a[0]; 
    printf("a[0]:%d\n", a[0]); 
    printf("b:%d\n", b);
    int c[3] = {1, 2, 3};
    printf("c[0]:%d\n", c[0]);
    printf("c[1]:%d\n", c[1]);
    printf("c[2]:%d\n", c[2]);
    return 0;
}  