#include <stdio.h>
#include <string.h>

void computeLPS(char *pat, int m, int *lps) {
    int len = 0, i = 1;
    lps[0] = 0;
    while (i < m) {
        if (pat[i] == pat[len]) lps[i++] = ++len;
        else if (len) len = lps[len - 1];
        else lps[i++] = 0;
    }
}

void KMP(char *txt, char *pat) {
    int n = strlen(txt), m = strlen(pat), i = 0, j = 0, found = 0, pos[100], idx = 0;
    int lps[m];
    computeLPS(pat, m, lps);
    while (i < n) {
        if (pat[j] == txt[i]) { i++; j++; }
        if (j == m) {
            pos[idx++] = i - j;
            j = lps[j - 1];
            found = 1;
        } else if (i < n && pat[j] != txt[i]) {
            if (j) j = lps[j - 1];
            else i++;
        }
    }
    if (found) {
        for (i = 0; i < idx; i++)
            printf("%d%s", pos[i], i == idx - 1 ? "\n" : ",");
    } else {
        printf("False\n");
    }
}

int main() {
    KMP("abcdefgabdef", "ab");
    KMP("hello world", "xyz");
    return 0;
}
