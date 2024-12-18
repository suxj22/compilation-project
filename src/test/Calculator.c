#include <stdio.h>

int main()
{
    // 输入的表达式
    char expr[100] = {'3', '+', '(', '2', '*', '2', ')', '-', '1', '/', '1', '#'}; // 直接在代码中赋值，可修改此处以更换表达式

    // 操作符栈和操作数栈
    char op_stack[100];
    int num_stack[100];

    // 栈顶指针初始化
    int op_top = -1;
    int num_top = -1;

    // 优先级定义
    char precedence[128] = {0}; // 存储运算符优先级
    precedence['+'] = 1;
    precedence['-'] = 1;
    precedence['*'] = 2;
    precedence['/'] = 2;
    precedence['('] = 0; // '(' 优先级最低

    // 当前解析位置
    int i = 0;
    while (expr[i] != '#')
    { // 使用 '#' 作为结束标志
        // 获取当前字符
        char c;
        c = expr[i];

        // 处理数字
        if (c >= '0' && c <= '9')
        {
            int num = 0;
            while (expr[i] >= '0' && expr[i] <= '9')
            {
                num = num * 10 + (expr[i] - '0');
                i++;
            }
            num_top = num_top + 1;
            num_stack[num_top] = num; // 将数字压入操作数栈
            continue;
        }

        // 处理左括号
        else if (c == '(')
        {
            op_top = op_top + 1;
            op_stack[op_top] = c;
        }

        // 处理右括号
        else if (c == ')')
        {
            int m = 0;
            while (op_top >= 0 && op_stack[op_top] != '(')
            {
                // 弹出并计算
                char op;
                op = op_stack[op_top];
                op_top = op_top - 1;
                int b = num_stack[num_top--];
                int a = num_stack[num_top--];
                int res;
                if (op == '+')
                {
                    res = a + b;
                }
                else if (op == '-')
                {
                    res = a - b;
                }
                else if (op == '*')
                {
                    res = a * b;
                }
                else if (op == '/')
                {
                    res = a / b;
                }
                num_top = num_top + 1;
                num_stack[num_top] = res;
            }
            op_top--; // 弹出左括号
        }

        // 处理操作符
        else if (c == '+' || c == '-' || c == '*' || c == '/')
        {
            int m = 0;
            while (op_top >= 0 && precedence[op_stack[op_top]] >= precedence[c])
            {
                // 弹出并计算
                char op;
                op = op_stack[op_top];

                int b = num_stack[num_top];
                num_top = num_top - 1;
                int a = num_stack[num_top];
                num_top = num_top - 1;

                int res;
                if (op == '+')
                {
                    res = a + b;
                }
                if (op == '-')
                {
                    res = a - b;
                }
                if (op == '*')
                {
                    res = a * b;
                }
                if (op == '/')
                {
                    res = a / b;
                }
                num_top = num_top + 1;
                num_stack[num_top] = res;
            }
            op_top = op_top + 1;
            op_stack[op_top] = c;
        }

        i++;
    }

    // 处理剩余操作符
    while (op_top >= 0)
    {
        char op;
        op = op_stack[op_top--];
        int b = num_stack[num_top--];
        int a = num_stack[num_top--];
        int res = (op == '+') ? (a + b) : (op == '-') ? (a - b)
                                      : (op == '*')   ? (a * b)
                                                      : (a / b);
        num_top = num_top + 1;
        num_stack[num_top] = res;
    }

    // 最终结果
    printf("Result: %d\n", num_stack[num_top]);

    return 0;
}
