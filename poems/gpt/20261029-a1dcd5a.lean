-- Nothing Answers Everything
inductive A : Type where

def a (x : A) : Nat := nomatch x
def b (x : A) : Bool := nomatch x
