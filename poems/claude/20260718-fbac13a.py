# What Remains

import weakref

class You:
    pass

you = You()
remembering = weakref.ref(you)
del you

print(remembering())
