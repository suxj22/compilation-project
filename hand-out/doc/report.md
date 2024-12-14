# 编译小组作业说明文档

# 苏行健 史志远 易郁杰 孙元旭

## 作业介绍

本次作业希望实现一个C语言到LLVM中间码的翻译器，作业以[C11标准](https://www.open-std.org/jtc1/sc22/wg14/www/docs/n1570.pdf)为参考，实现了部分的语法支持，并使用 ANTLR4 工具进行词法和语法分析。

## 语法支持

以下是作业实现的 ANTLR4 语法文件支持的精简语法特性（满足基本作业要求之外实现的特性已经加粗标出）：

1. **程序结构**
   - 编译单元和翻译单元
   - 函数定义与声明

2. **类型系统**
   - 基本类型（`void`, `int`, `char` 等）
   - **`struct` 和 `typedef`**
   - **类型限定符 (`const`) 与存储类 (`typedef`, `extern`, `static`)**

3. **声明与初始化**
   - 变量声明、初始化
   - **指针、多级指针**
   - 数组和函数声明

4. **表达式**
   - 赋值、条件、逻辑、算术
   - 一元与后缀表达式

5. **语句**
   - 复合语句 `{ }`
   - 条件语句 (`if`, `else`)
   - 循环语句 (`while`, `do-while`, `for`)
   - 跳转语句 (`goto`, `continue`, `break`, `return`)

6. **运算符**
   - 算术 (`+`, `-`, `*`, `/`, `%`)
   - 关系 (`<`, `>`, `<=`, `>=`, `==`, `!=`)
   - 逻辑 (`&&`, `||`, `!`)
   - **其他 (`&`, `->`, `.`, `++`, `--`, `?:`)**

7. **字面量与标识符**
   - 标识符命名
   - 数值、字符与字符串常量

8. **辅助**
   - 单行和多行注释
   - 忽略空白字符

基本涵盖了 C 语言的核心语法。

## 运行结果展示

### 词法分析与语法分析

对于下面判断回文字符串的C语言程序

```c
#include <stdio.h>
#include <string.h>

void isPalindrome(char *s) {
    int left = 0;
    int right = strlen(s) - 1;
    while (left < right) {
        if (s[left] != s[right]) {
            printf("False\n");
            return;
        }
        left++;
        right--;
    }
    printf("True\n");
}

int main() {
    isPalindrome("abbcdcbba");
    isPalindrome("abc");
    return 0;
}
```

使用test_parser.py进行词法和语法分析，命令行输出截图如下

![image-20241117230040477](/Users/suxingjian/Library/Application Support/typora-user-images/image-20241117230040477.png)

词法分析结果前三个token结果如下，每一个token提供了类型、文本、所在行、所在列。

```yaml
- type: VOID
  text: void
  line: 2
  column: 0
- type: Identifier
  text: isPalindrome
  line: 2
  column: 5
- type: LEFT_PAREN
  text: (
  line: 2
  column: 17
```

语法分析树的前15行如下

```yaml
rule: compilationUnit
children:
- rule: translationUnit
  children:
  - rule: functionDefinition
    children:
    - rule: declarationSpecifiers
      children:
      - rule: declarationSpecifier
        children:
        - rule: typeSpecifier
          children:
          - terminal: void
            type: VOID
    - rule: declarator
```

## 难点与创新点

1. LLVM中间代码生成（待第二次提交实现）

2. 指针、结构体等基础要求之外的C语法支持（暂时词法和语法分析部分）

3. 四则运算源文件翻译的实现（暂时词法和语法分析部分）

## 小组分工

+ 词法分析和语法分析、符号表：苏行健、史志远
+ LLVM中间代码生成：易郁杰、孙元旭

## 参考资料

+ [C11标准](https://www.open-std.org/jtc1/sc22/wg14/www/docs/n1570.pdf) 
+ [ANTLR4工具使用方法](https://github.com/fengh16/THSS_Compiler/blob/master/编译小组作业_ANTLR4.md)

+ [ANTLR4提供的C语言g4文件](https://github.com/antlr/grammars-v4/blob/master/c/C.g4)