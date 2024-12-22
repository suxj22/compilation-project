#include <stdio.h>

int main()
{
    char str1[100] = {'a', 'b', 'c', 'b', 'a'};
    printf("Please type in the string1 and finish typing with #: ");
    scanf("%s", str1);

    int length;
    length = 0;
    while (str1[length] != '#')
    {
        length = length + 1;
    }
    int is_palindrome_1 = 1; // 标记是否为回文

    // 检测是否为回文
    for (int i = 0; i < length; i++)
    {
        if (str1[i] != str1[length - 1 - i])
        {
            is_palindrome_1 = 0;
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

    return 0;
}