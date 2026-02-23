-- The Distance Between Two Silences

module Main where

silence :: a -> ()
silence _ = ()

almost :: Int -> Int
almost n = n - 1

reach :: Int -> Int -> Bool
reach here there
  | here == there = True
  | here > there  = False
  | otherwise     = reach (almost there) there

waiting :: Int
waiting = 0

arrival :: Int
arrival = 1

--

main :: IO ()
main = do
  let _ = reach waiting arrival
  let _ = silence arrival
  return ()
