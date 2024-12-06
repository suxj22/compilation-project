#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void sortNumbers(char *s) {
    int nums[100], n = 0, i, j, temp;
    char *p = strtok(s, ",");
    while (p) {
        nums[n++] = atoi(p);
        p = strtok(NULL, ",");
    }
    for (i = 0; i < n - 1; i++)
        for (j = 0; j < n - i - 1; j++)
            if (nums[j] > nums[j + 1]) {
                temp = nums[j]; nums[j] = nums[j + 1]; nums[j + 1] = temp;
            }
    for (i = 0; i < n; i++)
        printf("%d%s", nums[i], i == n - 1 ? "\n" : ",");
}

int main() {
    char input[] = "5,8,4,9";
    sortNumbers(input); // 输出: 4,5,8,9
    return 0;
}
