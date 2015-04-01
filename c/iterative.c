/* Iterative implementation of Ackermann's function
 * by Michael Wirth
 * adapted by Ryan Wilson-Perkin
 * for CIS3190W15: Legacy Programming
 */
#include <stdio.h>
#include <stdlib.h>
#define STACKSIZE 1000000

struct stack
{
        int top;
        int items[STACKSIZE];
} st;

/* Initialize top pointer of stack */
void create_stack()
{
        st.top = -1;
}

/* Returns true if the stack is full. False otherwise. */
int is_full()
{
        return (st.top == STACKSIZE);
}

/* Returns true if the stack is empty. False otherwise. */
int is_empty()
{
        return (st.top == -1);
}

/* Returns the top element of the stack. */
int top()
{
        return st.items[st.top];
}

/* Pushes an integer onto the stack. */
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

/* Pops an integer off the stack. */
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
