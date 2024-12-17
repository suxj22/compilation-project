#include <stdio.h>
#include <string.h>

void isPalindrome(char *s)
{
    int left = 0;
    int right = strlen(s) - 1;
    while (left < right)
    {
        if (s[left] != s[right])
        {
            printf("False\n");
            return;
        }
        left++;
        right--;
    }
    printf("True\n");
}

int main()
{
    isPalindrome("abba");
    // isPalindrome("abc");
    return 0;
}
