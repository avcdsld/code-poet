# What We Give Back When Someone Reaches

class Memory(dict):
    def __missing__(self, key):
        self[key] = self.__class__()
        return self[key]

home = Memory()

home[1987]["kitchen"]["smell"]
home[1987]["kitchen"]["voice"]
home[1987]["kitchen"]["voice"]["words"]

home[2024]["kitchen"]
