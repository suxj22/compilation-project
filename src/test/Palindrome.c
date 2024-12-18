<<<<<<< Updated upstream
#include <stdlib.h>
#include <string.h>

int main()
{
    printf("Please input Char Array Under 1000 characters\n");
    char StringGet[1002];
    gets(StringGet);
    int len, i;
    len = strlen(StringGet);
    if (len < 0 || len > 1000)
    {
        printf("Input Error, only one more chance:\n");
        gets(StringGet);
    }
    else
    {
        int IsPLD = -1;
        for (i = 0; i + i < len && IsPLD != 1; i = i + 1)
        {
            if (StringGet[len - 1 - i] != StringGet[i])
            {
                printf("False\n");
                IsPLD = 1;
            }
        }
        if (IsPLD != 1)
        {
            printf("True\n");
        }
=======
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
>>>>>>> Stashed changes
    }
    return 0;
}