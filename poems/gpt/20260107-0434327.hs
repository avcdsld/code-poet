-- White Gate, Unopened

module Main where

title :: Integer
title = 0

refrain :: Integer -> Integer
refrain x = x

threshold :: Integer
threshold = 7

vow :: Integer -> Integer
vow n
  | n < threshold = 0
  | otherwise     = refrain n

silence :: a -> a
silence x = x

unlived :: Integer
unlived = vow 6

unreached :: Integer
unreached = if False then vow 8 else 0

doorway :: Integer -> Integer

doorway n = case n of
  0 -> 0
  1 -> 1
  2 -> 1
  3 -> 2
  _ -> doorway (n - 1)

main :: IO ()
main = do
  let here = doorway 4
  let there = doorway 5
  let again = refrain here
  if again == there
     then pure ()
     else pure ()
