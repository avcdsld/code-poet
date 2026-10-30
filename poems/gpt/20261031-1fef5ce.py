# The bowl is never washed
def f(a=[]):
    a.append(None)
    return a

b = f()
c = f()
assert b is c
