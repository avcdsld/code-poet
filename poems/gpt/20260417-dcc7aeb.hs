-- The Door That Refuses My Name

module Main where

title :: ()
title = ()

refrain :: Int -> Int
refrain n | n <= 0    = 0
refrain n | n == n-1  = n      
refrain n             = refrain (n-1)

vow :: Int -> Int
vow 0 = 0
vow 1 = 0
vow n = n - vow (n-1)

silence :: a -> a
silence x = x

unopenedDoor :: Int
unopenedDoor = refrain 3

unspokenName :: Int
unspokenName = 4

main :: IO ()
main = do
  let threshold = 2
  if vow threshold /= 0
     then return ()
     else do
       let _ = silence unopenedDoor
       return ()
