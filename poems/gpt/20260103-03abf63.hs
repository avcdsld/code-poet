-- The Door That Refuses Noon

module Main where

title :: ()
title = ()

vow :: Int -> Int
vow noon
  | noon == 12 = noon
  | noon <  12 = 0
  | otherwise  = 0

refrain :: Int
refrain = vow 12

refrain' :: Int
refrain' = vow 11

silence :: a -> a
silence a = a

interruption :: Int
interruption =
  if refrain == refrain'
    then 1
    else 0

unwoken :: Int
unwoken
  | interruption == 1 = 2
  | interruption == 0 = 2
  | otherwise         = 3

main :: IO ()
main = return ()
