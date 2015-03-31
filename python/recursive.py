#!/usr/bin/python
# That's no moon. https://www.youtube.com/watch?v=EVekNsgUqn4

def ackermann(m, n):
    if m == 0:
        return n + 1
    elif n == 0:
        return ackermann(m-1, 1)
    else:
        return ackermann(m-1, ackermann(m, n-1))

if __name__ == "__main__":
    m, n = map(int, raw_input("Enter m and n: ").split())
    r = ackermann(m, n)
    print "Result:", r
