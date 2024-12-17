// test_all_loops_separated.c
#include <stdio.h>

// 计算两个整数的和
int compute_sum(int a, int b)
{
    return a + b;
}

// 测试 while 循环
void test_while_loop()
{
    printf("=== Test while loop ===\n");

    // 预期结果
    int expected_i = 5;

    // 实际执行
    int i = 0;
    while (i < 5)
    {
        i += 1;
    }

    // 输出结果
    printf("Expected i = %d\n", expected_i);
    printf("Actual i = %d\n", i);

    // 验证结果
    if (i == expected_i)
    {
        printf("Result: Passed\n\n");
    }
    else
    {
        printf("Result: Failed\n\n");
    }
}

// 测试 do-while 循环
void test_do_while_loop()
{
    printf("=== Test do-while loop ===\n");

    // 预期结果
    int expected_j = 10;

    // 实际执行
    int j = 0;
    do
    {
        j += 2;
    } while (j < 10);

    // 输出结果
    printf("Expected j = %d\n", expected_j);
    printf("Actual j = %d\n", j);

    // 验证结果
    if (j == expected_j)
    {
        printf("Result: Passed\n\n");
    }
    else
    {
        printf("Result: Failed\n\n");
    }
}

// 测试 for 循环
void test_for_loop()
{
    printf("=== Test for loop ===\n");

    // 预期结果
    int expected_iterations = 5;
    int actual_iterations = 0;

    int j = 10; // 从前一个测试中 j = 10

    for (int k = 0; k < 5; k += 1)
    {
        int sum = compute_sum(k, j);
        // 输出每次计算的和
        printf("k = %d, j = %d, sum = %d\n", k, j, sum);
        actual_iterations += 1;
    }

    // 输出结果
    printf("Expected iterations = %d\n", expected_iterations);
    printf("Actual iterations = %d\n", actual_iterations);

    // 验证结果
    if (actual_iterations == expected_iterations)
    {
        printf("Result: Passed\n\n");
    }
    else
    {
        printf("Result: Failed\n\n");
    }
}

// 测试嵌套循环
void test_nested_loops()
{
    printf("=== Test nested loops ===\n");

    // 预期结果
    int expected_i = 10;

    // 实际执行
    int i = 5;
    for (int m = 0; m < 3; m += 1)
    {
        while (i < 10)
        {
            i += 1;
        }
    }

    // 输出结果
    printf("Expected i = %d\n", expected_i);
    printf("Actual i = %d\n", i);

    // 验证结果
    if (i == expected_i)
    {
        printf("Result: Passed\n\n");
    }
    else
    {
        printf("Result: Failed\n\n");
    }
}

int main()
{
    // 测试 main 函数
    printf("=== Test main function ===\n");
    int res = compute_sum(1, 2);
    int expected_res = 3;
    printf("Expected res = %d\n", expected_res);
    printf("Actual res = %d\n", res);
    if (res == expected_res)
    {
        printf("Result: Passed\n\n");
    }
    else
    {
        printf("Result: Failed\n\n");
    }

    // 调用各个测试函数
    test_while_loop();
    test_do_while_loop();
    test_for_loop();
    test_nested_loops();

    return 0;
}
