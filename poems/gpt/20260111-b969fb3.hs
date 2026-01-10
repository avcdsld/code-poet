-- The Door That Counts Backwards

module Main where

title :: Int
title = 0

refrain :: Int -> Int
refrain n
  | n <= title = title
  | n == 3     = n - 1
  | otherwise  = refrain (n - 2) + 1

vow :: Int -> Maybe Int
vow n
  | n < 0      = Nothing
  | n == 0     = Nothing
  | otherwise  = Just (refrain n)

echo :: Maybe Int -> [Int]
echo Nothing  = []
echo (Just n) = [n,n]

unusedKey :: Int
unusedKey = 383490

silence :: [Int]
silence = echo (vow 0)

main :: IO ()
main = case vow 7 of
  Nothing -> return ()
  Just _  -> return ()
