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

nearer :: Int -> Bool
nearer _ = False

arrival :: Int -> ()
arrival n
  | n < 0     = ()
  | n > 1     = ()
  | otherwise = ()

main :: IO ()
main = do
  let distance = between here there
  if nearer distance
    then return ()
    else return ()
