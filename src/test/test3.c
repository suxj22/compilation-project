#include <stdio.h>
int main() {  
    int x = 10;
    printf("x:%d\n", x);
    int a[5];  
    a[0] = 10;  
    int b = a[0]; 
    printf("a[0]:%d\n", a[0]); 
    printf("b:%d\n", b);
    int c[3] = {1, 2, 3};
    printf("c[0]:%d\n", c[0]);
    printf("c[1]:%d\n", c[1]);
    printf("c[2]:%d\n", c[2]);

    char d[3] = {'a', 'b', 'c'};
    printf("d[0]:%c\n", d[0]);
    printf("d[1]:%c\n", d[1]);
    printf("d[2]:%c\n", d[2]);

    // char e[3] = "abc";
    return 0;
}  