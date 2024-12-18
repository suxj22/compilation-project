#include <stdio.h>

int main()
{
    // 定义输入的字符串及其长度
    char s[12] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'a', 'b', 'd', 'e', 'f'};
    int s_len = 12; // 主串的长度
    char t[2] = {'a', 'b'};
    int t_len = 2; // 模板串的长度

    int next[100];        // next 数组
    int result[100];      // 存储匹配的起始位置
    int result_count = 0; // 记录匹配的位置数量
    int i, j;             // 循环变量

    // 构造模板串的 next 数组
    next[0] = 0; // next 数组第一个位置为 0
    for (i = 1, j = 0; i < t_len; i++)
    {
        while (j > 0 && t[i] != t[j])
        {
            j = next[j - 1];
        }
        if (t[i] == t[j])
        {
            j++;
        }
        next[i] = j;
    }

    // 在主串中匹配模板串
    for (i = 0, j = 0; i < s_len; i++)
    {
        while (j > 0 && s[i] != t[j])
        {
            j = next[j - 1];
        }
        if (s[i] == t[j])
        {
            j++;
        }
        if (j == t_len)
        { // 完全匹配
            result[result_count++] = i - t_len + 1;
            j = next[j - 1];
        }
    }

    // 输出结果
    if (result_count == 0)
    {
        printf("False\n");
    }
    else
    {
        for (i = 0; i < result_count; i++)
        {
            if (i > 0)
                printf(",");
            printf("%d", result[i]);
        }
        printf("\n");
    }

    return 0;
}
