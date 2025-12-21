-- Winter Solstice

module Winter where

night :: Int -> Int
night 0 = 0
night n = 1 + night (n - 1)

day :: Int -> Int
day 0 = 0
day _ = 0

solstice :: Int -> Int
solstice hours
  | hours > 16 = night hours
  | hours > 8  = night hours
  | otherwise  = day hours

longest :: Int
longest = solstice 17

shortest :: Int
shortest = solstice 7

waiting :: ()
waiting = ()
