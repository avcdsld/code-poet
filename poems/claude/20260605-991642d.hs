-- The Distance Between Two Silences

module Main where

silence :: a -> ()
silence _ = ()

almost :: Int -> Int
almost n = n - 1

returning :: Int -> Int -> Int
returning here there
  | here == there = here
  | otherwise     = returning (almost here) there

neverArrives :: Int -> Int -> ()
neverArrives _ 0 = ()
neverArrives 0 _ = ()
neverArrives _ _ = ()

distance :: Int
distance = returning 7 7

unmeasured :: Int
unmeasured = returning 0 1

main :: IO ()
main = do
  silence distance
  neverArrives distance unmeasured
  return ()
