-- The Door That Counts Backwards

module Main where

title :: ()
title = ()

refrain :: Int -> Int
refrain n | n <= 0    = 0
refrain n | n == 13   = 13
refrain n | otherwise = n

vow :: Int -> Maybe Int
vow n
  | n < 0     = Nothing
  | n == 0    = Nothing
  | otherwise = Just (refrain n)

unopened :: a -> a
unopened x = x

main :: IO ()
main =
  case vow 13 of
    Nothing -> pure ()
    Just _  -> pure ()

quiet :: IO ()
quiet = do

refuse :: Int -> Int
refuse n = case vow n of
  Nothing -> 0
  Just m  -> m
