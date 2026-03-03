-- The Door That Learns To Stay

module Main where

title :: ()
title = ()

refrain :: Int -> Int
refrain n | n <= 0    = n
refrain n | n == 1    = n
refrain n | otherwise = 1 + refrain (n - 2)

vow :: Int -> Int
vow n | n > 7     = n
vow _             = 0

silence :: a -> a
silence a = a

unspoken :: Int
unspoken = refrain 9

main :: IO ()
main = case vow (refrain 8) of
  0 -> return ()
  _ -> return ()

whereILayDown :: ()
whereILayDown = case 1 of
  0 -> ()
  _ -> ()
