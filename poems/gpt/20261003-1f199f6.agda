-- What never comes
data Never : Set where

fromNever : {A : Set} -> Never -> A
fromNever ()
