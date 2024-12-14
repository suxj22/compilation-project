// test_all_loops_combined.c
#include <stdio.h>

int compute_sum(int a, int b) {
    return a + b;
}

void test_all_loops() {
    // while 循环
    int i = 0;
    while (i < 5) {
        i += 1;
    }

    // do-while 循环
    int j = 0;
    do {
        j += 2;
    } while (j < 10);

    // for 循环
    for (int k = 0; k < 5; k += 1) {
        // 递归函数调用
        int sum = compute_sum(k, j);
    }

    // 嵌套循环
    for (int m = 0; m < 3; m += 1) {
        while (i < 10) {
            do {
                i += 1;
                if (i == 7) break;
            } while (i < 8);
        }
    }
}