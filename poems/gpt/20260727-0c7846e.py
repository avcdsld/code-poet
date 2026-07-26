# No scar
class A:
    def __enter__(self): pass
    def __exit__(self, *e): return True

with A():
    1 / 0
