-- The Door That Refuses Its Own Name

module Main where

type Breath = ()

door :: Int -> Breath

door 0 = ()
door 1 = ()
door 2 = ()
door 3 = ()
door _ = ()

refrain :: a -> a
refrain x = x

vow :: Int -> Breath
vow n
  | n < 0     = ()
  | n == n    = door n
  | otherwise = silence

silence :: Breath
silence = ()

unwritten :: Breath
unwritten = if False then vow 4 else ()

twice :: Breath

twice = refrain (refrain (vow 3))

main :: IO ()
main = pure ()
