

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int factorial(int n) {
    // if-else 选择语句
    if (n <= 1) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

int add(int a, int b) {
    return a + b;
}

int main() {
    // 变量声明和初始化
    int x = 10;
    int y = 20;
    int result;
    
    // 基本算术表达式
    result = x + y * 2;  // 乘法优先级
    result = (x + y) * 2;  // 括号表达式
    
    // 赋值表达式和复合赋值
    result = x;
    result += 5;
    result -= 3;
    result *= 2;
    result /= 4;
    result %= 3;
    
    // 比较表达式和逻辑表达式
    int isGreater = x > y;
    int isEqual = x == y;
    int logicalAnd = (x > 0) && (y > 0);
    int logicalOr = (x > 0) || (y > 0);
    
    // 一元表达式
    int z = -x;
    int notZ = !z;
    
    // 自增自减
    int a = 5;
    ++a;  // 前缀自增
    --a;  // 前缀自减
    a++;  // 后缀自增
    a--;  // 后缀自减
    
    // 函数调用
    int sum = add(x, y);
    
    // 三元运算符
    int max = x > y ? x : y;
    
    // 复合语句和作用域
    {
        int localVar = 100;
        result = localVar + x;
    }
    
    // 表达式语句
    add(1, 2);
    int sum_xy = x + y;
    printf("sum_xy: %d\n", sum_xy);
    char chr = 'a';
    printf("chr: %c\n", chr);
    // 字符串
    // char str[13] = "Hello, world!";
    // int len = strlen(str);
    // int in = atoi(str);
    // printf("%s\n", str);
    printf("aaa");
    // scanf ("%d", &in);
    // gets(str);

    return 0;
}