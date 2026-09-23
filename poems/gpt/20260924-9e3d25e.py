# The First Empty Place
def a(b=[]):
    b.append(None)
    return b

assert a() == [None]
assert a() == [None, None]
assert a() == [None, None, None]
