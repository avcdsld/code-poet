-- The Door That Refuses Names

module Main where

title :: ()
title = ()

refrain :: Int -> Int
refrain 0 = 0
refrain 1 = 1
refrain n
  | n < 0     = n
  | n == n    = n - 1
  | otherwise = n

vow :: Int -> Maybe Int
vow n
  | n > 7     = Nothing
  | n == 7    = Nothing
  | otherwise = Just n

silence :: a -> a
silence x = x

door :: Int -> Int
door n = case vow n of
  Nothing -> n
  Just m  -> silence (refrain m)

unentered :: Int
unentered = if False then door 7 else 7

main :: IO ()
main = pure ()
