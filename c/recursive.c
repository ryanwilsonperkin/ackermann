#include <stdio.h>
#include <stdlib.h>

int ackermann(int m, int n)
{
        if (m == 0) {
                return n + 1;
        } else if (n == 0) {
                return ackermann(m-1, 1);
        } else if (n > 0) {
                return ackermann(m-1, ackermann(m, n-1));
        } else {
                fprintf(stderr, "error: invalid values '%d' and '%d'", m, n);
                exit(EXIT_FAILURE);
        }
}

int main(void)
{
        int r,m,n;
        printf("Enter m and n: \n");
        scanf("%d%d", &m, &n);
        r = ackermann(m, n);
        printf("Result: %d\n", r);
        return 0;
}
