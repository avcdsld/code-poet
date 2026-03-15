-- The Distance Between

module Distance where

here :: Int
here = 0

there :: Int
there = here + 1

further :: Int
further = there + 1

unreachable :: Int
unreachable = unreachable

stayed :: Int -> Bool
stayed x = x == here

left :: Int -> Bool
left x = x > here

returned :: Int -> Bool
returned _ = False

distance :: Int -> Int -> Int
distance a b
  | a == b    = 0
  | otherwise = 1 + distance a (b - 1)

between :: Int -> Int
between x
  | stayed x  = here
  | left x    = further
  | otherwise = unreachable
