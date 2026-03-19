-- The Door That Refuses Its Own Name

module Main where

title :: ()
title = ()

refrain :: Int -> Int
refrain n = n

threshold :: Int
threshold = 3

vow :: Int -> Maybe Int
vow steps
  | steps < threshold = Nothing
  | steps == threshold = Just (refrain steps)
  | otherwise = Nothing

silence :: a -> a
silence a = a

unasked :: Int
unasked = silence (refrain 0)

main :: IO ()
main =
  case vow 2 of
    Nothing -> return ()
    Just _  -> return ()

interruption :: Int
interruption = case vow threshold of
  Nothing -> 0
  Just x  -> x
