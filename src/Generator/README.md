使用antlr工具编译C.g4文件，将编译的结果放入Parser的generated文件夹中

```sh
antlr4 -Dlanguage=Python3 -visitor -o generated C.g4
```
只有使用`visitor`参数才会生成`CVisitor.py`

以下是一个包含目前已实现语法特性的C代码示例：

```c
// 函数声明和定义
int add(int a, int b) {
    return a + b;
}

int factorial(int n) {
    // if-else 选择语句
    if (n <= 1) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
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
    x + y;
    
    // return 语句
    return 0;
}
```

这个示例包含了以下已实现的语法特性：

1. 程序结构：
   - 函数定义
   - 变量声明和初始化
   - 复合语句和作用域

2. 表达式：
   - 基本算术运算 (+, -, *, /, %)
   - 赋值和复合赋值
   - 比较运算 (>, <, >=, <=, ==, !=)
   - 逻辑运算 (&&, ||)
   - 一元运算 (-, !)
   - 自增自减 (++, --)
   - 函数调用
   - 三元运算符 (?:)
   - 括号表达式

3. 语句：
   - if-else 条件语句
   - 表达式语句
   - return 语句
   - 复合语句

4. 作用域：
   - 全局作用域（函数定义）
   - 局部作用域（代码块）
   - 函数参数

