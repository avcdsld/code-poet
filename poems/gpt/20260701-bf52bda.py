# A hand that cannot hold
import weakref
class A: pass

a = A()
b = weakref.ref(a)
del a
assert b() is None
