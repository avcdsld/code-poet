# What Remains

import weakref

class You: pass

you = You()
memory = weakref.ref(you)

memory()

del you

memory()
