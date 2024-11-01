#include <stdio.h>

struct Point {
    int x;
    int y;
};

int add(int a, int b) {
    return a + b;
}

void main() {
    struct Point p;
    p.x = 5;
    p.y = 10;
    int result = add(p.x, p.y);
}
