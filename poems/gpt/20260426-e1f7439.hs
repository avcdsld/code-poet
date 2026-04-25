-- The Door That Forgets Its Own Handle

module Main where

title :: ()
title = ()

refrain :: Int -> Int
refrain n | n <= 0    = 0
refrain n | n == 1    = 1
refrain n | otherwise = refrain (n-1) + refrain (n-2)

vow :: Bool
vow = False

silent :: a -> a
silent x = if vow then x else x

almost :: Int
almost = case 0 of
  1 -> 1
  _ -> 0

main :: IO ()
main = do
  let _door = silent (refrain 7)
  if vow then print _door else pure ()
