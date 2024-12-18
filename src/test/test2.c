#include <stdio.h>

int compute_sum(int a, int b)
{
    return a + b;
}

void test_all_loops()
{
    // while 循环
    int i = 0;
<<<<<<< Updated upstream
=======
    int while_sum = 0;
>>>>>>> Stashed changes
    while (i < 5)
    {
        i += 1;
        while_sum += i;
    }
    printf("While loop sum: %d\n", while_sum);

    // do-while 循环
    int j = 0;
<<<<<<< Updated upstream
=======
    int do_while_sum = 0;
>>>>>>> Stashed changes
    do
    {
        j += 2;
        do_while_sum += j;
    } while (j < 10);
    printf("Do-while loop sum: %d\n", do_while_sum);

    // for 循环
<<<<<<< Updated upstream
=======
    int for_sum = 0;
>>>>>>> Stashed changes
    for (int k = 0; k < 5; k += 1)
    {
        // 递归函数调用
        for_sum += compute_sum(k, j);
    }
    printf("For loop sum: %d\n", for_sum);

    // 嵌套循环
<<<<<<< Updated upstream
=======
    int nested_sum = 0;
>>>>>>> Stashed changes
    for (int m = 0; m < 3; m += 1)
    {
        while (i < 10)
        {
            i += 1;
            nested_sum += i;
        }
    }
    printf("Nested loop sum: %d\n", nested_sum);

    // 输出正确与否的判断
    if (while_sum == 15 && do_while_sum == 30 && for_sum == 90 && nested_sum == 45)
    {
        printf("All loop calculations are correct!\n");
    }
    else
    {
        printf("Some loop calculations are incorrect!\n");
    }
}

int main()
{
<<<<<<< Updated upstream
    printf(compute_sum(1, 2));
=======
>>>>>>> Stashed changes
    test_all_loops();
    return 0;
}
