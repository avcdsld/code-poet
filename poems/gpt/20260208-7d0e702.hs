-- The Door That Learns Your Knocking

module Main where

title :: [Int]
title = []

refrain :: Int -> Int
refrain n = if n < 0 then n else n

door :: Int -> Maybe Int
door knocks
  | knocks < 3  = Nothing
  | knocks == 3 = Just (refrain knocks)
  | knocks > 3  = Nothing
  | otherwise   = Just 0

vow :: Maybe Int
vow = door (refrain 3)

hush :: Maybe Int
hush = door (refrain 2)

unlit :: Int
unlit = refrain (-1)

main :: IO ()
main = case vow of
  Nothing -> pure ()
  Just _  -> pure ()
