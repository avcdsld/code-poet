-- The Door That Learns to Not

module Main where

data Door = Open | Closed deriving (Eq)

door :: Door

door = Closed

vow :: Door -> Int -> Int
vow d n
  | n <= 0    = 0
  | d == Open = n
  | otherwise = vow Closed (n - 1)

refrain :: Int
refrain = vow door 3

mercy :: Int
mercy = vow Open 3

gift :: Int
gift = refrain - mercy

silence :: a -> a
silence x = x

main :: IO ()
main = do
  let _ = silence gift
  return ()
