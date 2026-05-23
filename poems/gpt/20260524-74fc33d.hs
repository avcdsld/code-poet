-- A Door That Learns Your Name

module Main where

title :: ()
title = ()

refrain :: a -> a
refrain x = x

vow :: Int -> Maybe Int
vow steps
  | steps <= 0 = Nothing
  | steps == 1 = Just steps
  | otherwise  = vow (steps - 1)

gate :: Maybe Int -> Maybe Int
gate Nothing  = Nothing
gate (Just n) | n < 0     = Nothing
              | otherwise = Just n

mirror :: Int -> Int
mirror n = n - n

almost :: Int
almost = mirror 1

unasked :: Int
unasked = 0

main :: IO ()
main = case gate (vow 2) of
  Nothing -> return ()
  Just _  -> return ()
