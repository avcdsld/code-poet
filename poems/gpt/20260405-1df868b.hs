-- The Gate That Remembers Without Saying

module Main where

title :: ()
title = ()

refrain :: Int -> Int
refrain n = n

vow :: Int -> Bool
vow steps = steps <= 5

silence :: a -> a
silence x = x

interruption :: Int -> Int
interruption n
  | n == 4    = n
  | n == 6    = n
  | otherwise = refrain n

stairs :: [Int]
stairs = [1,2,3,4,5,6,7]

kept :: [Int]
kept = [ interruption n | n <- stairs, vow n ]

unopenedDoor :: Int
unopenedDoor = 8

main :: IO ()
main = do
  if vow (length kept) then pure () else pure ()
