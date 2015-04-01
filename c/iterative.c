#include <stdio.h>
#include <stdlib.h>
#define STACKSIZE 1000000

struct stack
{
        int top;
        int items[STACKSIZE];
} st;

void create_stack()
{
        st.top = -1;
}

int is_full()
{
        return (st.top == STACKSIZE);
}

int is_empty()
{
        return (st.top == -1);
}

int top()
{
        return st.items[st.top];
}

void push(int m)
{
        if (is_full()) {
                fprintf(stderr, "Error: stack overflow\n");
                exit(EXIT_FAILURE);
        }
        else {
                st.items[++st.top] = m;
        } 
}

void pop(int *m)
{
        if (is_empty()) {
                fprintf(stderr, "Error: stack underflow\n");
                exit(EXIT_FAILURE);
        }
        else {
                *m = st.items[st.top--];
        }
}

int ackermann(int m, int n)
{
        push(m);
        while (!is_empty()) {
                pop(&m);
                if (m == 0)
                        n++;
                else if (n == 0){
                        n = 1;
                        push(m-1);
                }
                else {
                        n--;
                        push(m-1);
                        push(m);
                }
        }
        return n;
}

int main(void)
{
        int r,m,n;
        create_stack();
        printf("Enter m and n: \n");
        scanf("%d%d", &m, &n);
        r = ackermann(m, n);
        printf("Result: %d\n", r);
        return 0;
}
