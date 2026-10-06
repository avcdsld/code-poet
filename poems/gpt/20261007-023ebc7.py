# one more breath
a = None

class b:
    def __del__(self):
        global a
        a = self

c = b()
del c
del a
