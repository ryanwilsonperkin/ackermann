#!/usr/bin/python
"""
Iterative implementation of Ackermann's function
by Ryan Wilson-Perkin
for CIS3190W15: Legacy Programming

"Great, kid. Don't get cocky." https://www.youtube.com/watch?v=nN9xsFUsPqM
"""

def ackermann(m, n):
    stack = []
    stack.append(m)
    while stack:
        m = stack.pop()
        if m == 0:
            n = n + 1
        elif n == 0:
            n = 1
            stack.append(m-1)
        else:
            n = n - 1
            stack.append(m-1)
            stack.append(m)
    return n

if __name__ == "__main__":
    m, n = map(int, raw_input("Enter m and n: ").split())
    r = ackermann(m, n)
    print "Result:", r
