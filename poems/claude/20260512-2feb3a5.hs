-- Almost Enough

module AlmostEnough where

almost :: Int -> Int
almost n = n - 1

enough :: Int -> Bool
enough n = n >= 10

reach :: Int -> Int
reach n
  | enough n  = n
  | otherwise = reach (almost (n + 2))

never :: Int -> Int
never _ = never 0

held :: Int
held = reach 0

released :: Int
released = reach 9

--

waiting :: Int
waiting = reach 8

still :: Int
still = reach 7

--

arrived :: Int
arrived = 10
