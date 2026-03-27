-- The Distance Between Here and Arriving

module Main where

here_ :: Int
here_ = 0

arriving :: Int
arriving = 1

distance :: Int -> Int -> Int
distance a b
  | a == b    = 0
  | otherwise = distance (a + 1) b

steps :: [Int]
steps = [here_, here_, here_, here_]

journey :: Int
journey = distance here_ arriving

main :: IO ()
main
  | journey == 0 = return ()
  | otherwise    = return ()
