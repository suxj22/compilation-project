#include <stdio.h>

int main()
{
    // 输入的表达式
    char expr[100] = {'1', '+', '(', '-', '5', '-', '2', '2', ')', '*', '4', '/', '(', '1', '+', '2', ')', '#'};

    // 操作符栈和操作数栈
    char op_stack[100];
    int num_stack[100];
    int op_top = -1;
    int num_top = -1;

    // 优先级定义
    char precedence[128] = {0};
    precedence['+'] = 1;
    precedence['-'] = 1;
    precedence['*'] = 2;
    precedence['/'] = 2;
    precedence['('] = 0;

    // 标记是否为负数
    int is_negative = 0;

    // 处理表达式
    int i = 0;
    while (expr[i] != '#')
    {
        char c;
        c = expr[i];

        // 判断负数
        if (c == '-' && (i == 0 || expr[i - 1] == '('))
        {
            is_negative = 1;
            i = i + 1;
            continue;
        }

        // 处理数字
        if (c >= '0' && c <= '9')
        {
            int num = 0;
            while (expr[i] >= '0' && expr[i] <= '9')
            {
                num = num * 10 + (expr[i] - '0');
                i = i + 1;
            }

            if (is_negative == 1)
            {
                num = -num;
                is_negative = 0;
            }

            num_top = num_top + 1;
            num_stack[num_top] = num;
            continue;
        }

        // 处理左括号
        if (c == '(')
        {
            op_top = op_top + 1;
            op_stack[op_top] = c;
            i = i + 1;
            continue;
        }

        // 处理右括号
        if (c == ')')
        {
            while (op_top >= 0)
            {
                if (op_stack[op_top] == '(')
                {
                    break;
                }

                char op;
                op = op_stack[op_top];
                op_top = op_top - 1;

                int b = num_stack[num_top];
                num_top = num_top - 1;
                int a = num_stack[num_top];
                num_top = num_top - 1;

                int res = 0;
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
            op_top = op_top - 1;
            i = i + 1;
            continue;
        }

        // 处理运算符
        if (c == '+' || c == '-' || c == '*' || c == '/')
        {
            while (op_top >= 0)
            {
                if (precedence[op_stack[op_top]] < precedence[c])
                {
                    break;
                }

                char op;
                op = op_stack[op_top];
                op_top = op_top - 1;

                int b = num_stack[num_top];
                num_top = num_top - 1;
                int a = num_stack[num_top];
                num_top = num_top - 1;

                int res = 0;
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
            i = i + 1;
            continue;
        }

        i = i + 1;
    }

    // 处理剩余运算符
    while (op_top >= 0)
    {
        char op;
        op = op_stack[op_top];
        op_top = op_top - 1;

        int b = num_stack[num_top];
        num_top = num_top - 1;
        int a = num_stack[num_top];
        num_top = num_top - 1;

        int res = 0;
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

    printf("%d\n", num_stack[num_top]);
    return 0;
}