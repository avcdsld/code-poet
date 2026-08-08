# Acquittal
class _:
    def __enter__(self): pass
    def __exit__(self, *wound): return True

with _():
    1 / 0
