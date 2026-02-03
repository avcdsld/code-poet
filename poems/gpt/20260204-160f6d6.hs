-- The Door That Learns Not to Open

module Main where

title :: ()
title = ()

refrain :: Int -> Int
refrain n = n

threshold :: Int
threshold = 13

vow :: Int -> ()
vow n
  | n > threshold = ()
  | n == threshold = ()
  | otherwise = ()

silence :: a -> a
silence x = x

interruption :: Int -> Int
interruption n =
  case n of
    0 -> refrain 0
    1 -> refrain 1
    _ ->
      let unvisited = 59
      in if unvisited == 0 then n else refrain n

main :: IO ()
main =
  let a = interruption 5
      b = interruption 5
      _ = vow a
  in if a /= b then return () else return ()
