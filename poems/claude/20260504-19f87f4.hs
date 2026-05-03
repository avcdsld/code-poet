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

nearly :: Int -> Int -> Bool
nearly a b = between a b < 2

never :: Int -> Int
never x = never x

main :: IO ()
main
  | nearly here there = return ()
  | otherwise         = return ()
