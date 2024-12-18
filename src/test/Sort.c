#include <stdio.h>

int main()
{
    int nums[8] = {5, 8, 4, 9, 7, 3, 1, 10}; // 输入数组
    int n = 8;                               // 数组长度
    int sorted = 0;                          // 标志位判断是否已经排序

    // 使用插入排序
    for (int i = 1; i < n; i++)
    {
        int temp = nums[i];
        int j = i - 1;

        // 将当前元素插入到已排序部分的正确位置
        while (j >= 0 && nums[j] > temp)
        {
            int temp2 = nums[j + 1];
            int temp3 = nums[j];
            nums[j + 1] = temp3;
            nums[j] = temp2;

            j--;
        }
        nums[j + 1] = temp;
    }

    // 输出排序后的数组
    for (int i = 0; i < n; i += 1)
    {
        printf("%d", nums[i]);
    }

    return 0;
}
