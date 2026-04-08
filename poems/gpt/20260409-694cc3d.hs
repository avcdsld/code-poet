-- Borrowed Light, Returned Unused

module Main where

title :: ()
title = ()

refrain :: a -> a
refrain x = x

vow :: Bool
vow = True

hush :: a -> a
hush x = x

threshold :: Int
threshold = 9

nearMiss :: Int
nearMiss = 8

interruption :: Int -> Int
interruption n
  | n > threshold = n
  | n == threshold = n
  | n == nearMiss = n
  | otherwise = n

silence :: IO ()
silence = return ()

unusedLantern :: Int
unusedLantern = interruption 0

main :: IO ()
main
  | vow = silence
  | otherwise = silence
