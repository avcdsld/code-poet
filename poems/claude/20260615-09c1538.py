# What We Do With What Is Gone

class Memory(dict):
    def __missing__(self, key):
        self[key] = self.__missing__
        return self[key]

here = Memory()
here[1959]
here[1987]
here[2003]
