-- Equinox

module Equinox where

light :: Int -> Int
light 0 = 0
light n = light (n - 1) + 1

dark :: Int -> Int
dark 0 = 0
dark n = dark (n - 1) - 1

balance :: Int -> Int -> Bool
balance day night
  | day == night = True
  | day > night  = False
  | otherwise    = False

wait :: Int -> ()
wait _ = ()

equinox :: Bool
equinox = balance (light 12) (dark 12)

unreached :: a
unreached = unreached
