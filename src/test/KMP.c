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
    int i;                // 外层循环变量
    int j;                // 内层循环变量

    // 构造next数组
    next[0] = 0;
    i = 1;
    j = 0;

    // 逐个计算next值
    while (i < t_len)
    {
        // 字符匹配的情况
        if (t[i] == t[j])
        {
            next[i] = j + 1;
            i = i + 1;
            j = j + 1;
            continue;
        }

        // j已经退到开头
        if (j == 0)
        {
            next[i] = 0;
            i = i + 1;
            continue;
        }

        // 字符不匹配且j>0，回退j
        j = next[j - 1];
    }

    // 在主串中匹配
    i = 0;
    j = 0;

    while (i < s_len)
    {
        // 字符匹配的情况
        if (s[i] == t[j])
        {
            i = i + 1;
            j = j + 1;

            // 找到一个完整匹配
            if (j == t_len)
            {
                result[result_count] = i - t_len;
                result_count = result_count + 1;
                j = next[j - 1];
            }
            continue;
        }

        // j已经退到开头
        if (j == 0)
        {
            i = i + 1;
            continue;
        }

        // 字符不匹配且j>0，回退j
        j = next[j - 1];
    }

    // 无匹配结果
    if (result_count == 0)
    {
        printf("False\n");
        return 0;
    }

    // 输出第一个匹配位置
    printf("%d", result[0]);

    // 输出其余匹配位置
    i = 1;
    while (i < result_count)
    {
        printf(",%d", result[i]);
        i = i + 1;
    }
    printf("\n");

    return 0;
}