# The day does not break
class a:
    def __enter__(self): pass
    def __exit__(self, *b): return True

with a():
    1 / 0

pass
