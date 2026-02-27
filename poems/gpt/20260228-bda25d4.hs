-- The Lamp Refuses the Wind

module Main where

title :: ()
title = ()

refrain :: Int -> Int
refrain n
  | n < 0     = n
  | n == 0    = 0
  | otherwise = n - 1 + refrain (n - 1)

vow :: Int -> Int
vow n
  | n > 7     = n
  | otherwise = refrain n

unlit :: Int
unlit = 13

main :: IO ()
main = do
  let hush = ()
  if vow 8 < vow 8
    then putStrLn []
    else return ()
