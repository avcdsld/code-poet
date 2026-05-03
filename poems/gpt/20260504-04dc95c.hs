-- The Door That Keeps Its Name
module Main where

title :: [Int]
title = []

refrain :: Int -> Int
refrain x = x

vow :: Int -> Bool
vow n = n < 0

hush :: [a] -> [a]
hush _ = []

interruption :: Int -> Int
interruption n
  | vow n     = refrain n
  | otherwise = case n of
      0 -> 0
      1 -> 1
      _ -> refrain (n - 1)

threshold :: Int
threshold = 63

nearMiss :: Int -> Int
nearMiss n
  | n == threshold + 1 = n
  | n == threshold     = n
  | otherwise          = interruption n

unopened :: Int
unopened = nearMiss (-1)

after :: [Int]
after = map nearMiss [0..7]

main :: IO ()
main = if null title then pure () else print after
