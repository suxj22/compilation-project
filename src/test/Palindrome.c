#include <stdio.h>

int main()
{
    char str1[5] = {'a', 'b', 'c', 'b', 'a'};
    char str2[5] = {'a', 'b', 'c', 'd', 'e'};
    int length = 5;
    int is_palindrome_1 = 1; // 标记是否为回文
    int is_palindrome_2 = 1; // 标记是否为回文

    // 检测是否为回文
    for (int i = 0; i < length; i++)
    {
        if (str1[i] != str1[length - 1 - i])
        {
            is_palindrome_1 = 0;
            break;
        }
    }
    // 检测是否为回文
    for (int i = 0; i < length; i++)
    {
        if (str2[i] != str2[length - 1 - i])
        {
            is_palindrome_2 = 0;
            break;
        }
    }

    // 输出结果
    if (is_palindrome_1)
    {
        printf("The string1 is a palindrome.\n");
    }
    else
    {
        printf("The string1 is not a palindrome.\n");
    }

    if (is_palindrome_2)
    {
        printf("The string2 is a palindrome.\n");
    }
    else
    {
        printf("The string2 is not a palindrome.\n");
    }
    return 0;
}