# The Goodbye Keeps Me Here
a = None

class b:
    def __del__(self):
        global a
        a = self

b()
assert a is not None
