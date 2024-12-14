#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

typedef struct { double data[1000]; int top; } ValStack;
typedef struct { char data[1000]; int top; } OpStack;

void pushVal(ValStack *s, double val) { s->data[++s->top] = val; }
double popVal(ValStack *s) { return s->data[s->top--]; }
int isEmptyVal(ValStack *s) { return s->top == -1; }

void pushOp(OpStack *s, char op) { s->data[++s->top] = op; }
char popOp(OpStack *s) { return s->data[s->top--]; }
char peekOp(OpStack *s) { return s->data[s->top]; }
int isEmptyOp(OpStack *s) { return s->top == -1; }

int precedence(char op) {
    return op == '+' || op == '-' ? 1 : (op == '*' || op == '/') ? 2 : 0;
}

double applyOp(double a, double b, char op) {
    if (op == '+') return a + b; if (op == '-') return a - b;
    if (op == '*') return a * b; if (op == '/') return a / b;
    return 0;
}

double evaluate(char *exp) {
    ValStack vals; OpStack ops; vals.top = ops.top = -1;
    int i = 0, len = strlen(exp);
    while (i < len) {
        if (isspace(exp[i])) { i++; continue; }
        if (exp[i] == '(') { pushOp(&ops, exp[i++]); }
        else if (isdigit(exp[i]) || (exp[i] == '-' && (i == 0 || exp[i - 1] == '('))) {
            int sign = 1;
            if (exp[i] == '-') { sign = -1; i++; }
            double val = 0;
            while (i < len && isdigit(exp[i])) val = val * 10 + (exp[i++] - '0');
            pushVal(&vals, val * sign);
        } else if (exp[i] == ')') {
            while (!isEmptyOp(&ops) && peekOp(&ops) != '(')
                pushVal(&vals, applyOp(popVal(&vals), popVal(&vals), popOp(&ops)));
            popOp(&ops); i++;
        } else {
            while (!isEmptyOp(&ops) && precedence(peekOp(&ops)) >= precedence(exp[i]))
                pushVal(&vals, applyOp(popVal(&vals), popVal(&vals), popOp(&ops)));
            pushOp(&ops, exp[i++]);
        }
    }
    while (!isEmptyOp(&ops))
        pushVal(&vals, applyOp(popVal(&vals), popVal(&vals), popOp(&ops)));
    return popVal(&vals);
}

void calculateExpression(char *s) {
    double result = evaluate(s);
    printf("%.2f\n", result);
}

int main() {
    calculateExpression("1+(-5-22)*4/(2+1)"); // 输出: -35
    calculateExpression("3+4*2/(1-5)");       // 输出: 1
    return 0;
}
