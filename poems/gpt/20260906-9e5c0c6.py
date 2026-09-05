# Everyone stays
def f(x, a=[]):
    a.append(x)
    return a

b = f(1)
c = f(2)

assert b is c
assert c == [1, 2]
