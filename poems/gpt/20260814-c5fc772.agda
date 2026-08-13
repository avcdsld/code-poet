-- No one must be enough
data Empty : Set where

f : {A : Set} -> Empty -> A
f ()
