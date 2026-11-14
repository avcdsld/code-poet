# What Goodbye Keeps
c = None

class A:
    def __del__(self):
        global c
        c = self

a = A()
del a
