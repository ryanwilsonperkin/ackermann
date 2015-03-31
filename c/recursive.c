#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>

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
        struct timeval t1, t2, tv;

        printf("Enter m and n: ");
        scanf("%d%d", &m, &n);

        // Start timer
        // Produces 1 microsecond resolution (1,000,000 microseconds = 1 sec)
        gettimeofday(&t1, NULL);

        r = ackermann(m, n);

        // Stop timer
        gettimeofday(&t2, NULL);

        printf("Result = %d\n", r);

        timersub(&t2,&t1,&tv);
        printf("%ld milliseconds\n", (1000000*tv.tv_sec+tv.tv_usec)/1000);

        return 0;
}
