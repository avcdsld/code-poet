-- The Distance Between

module Main where

here :: Int
here = 0

there :: Int
there = 1

between :: Int -> Int -> Int
between a b
  | a == b    = 0
  | otherwise = between (a + 1) b

nearer :: Int -> Int
nearer x
  | x <= here = x
  | otherwise = nearer (x - 1)

farther :: Int -> Int
farther _ = farther there

arrival :: Int -> ()
arrival x
  | x == there = ()
  | x == here  = arrival there
  | otherwise  = ()

departure :: Int -> ()
departure _ = ()

main :: IO ()
main = return ()
