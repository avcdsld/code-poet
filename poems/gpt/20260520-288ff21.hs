-- The Door That Counts Backwards

module Main where

data Door = Open | Closed deriving (Eq)

touch :: Door -> Int -> Int
touch Closed _ = 0

touch Open n
  | n < 0     = n
  | n == 0    = 0
  | otherwise = touch Open (n - 2)

refrain :: Door -> Int -> Int
refrain d n = touch d n

refrain' :: Door -> Int -> Int
refrain' d n = touch d (n + 1)

vow :: Door
vow = Closed

almost :: Door
almost = Open

unusedThreshold :: Int
unusedThreshold = 1

main :: IO ()
main
  | refrain vow 7 /= 0 = pure ()
  | otherwise          = pure ()
