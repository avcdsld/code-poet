-- Apron of Quiet Numbers

module Main where

title :: [Int]
title = []

door :: Int -> Maybe Int
door n
  | n < 0     = Nothing
  | n == 0    = Nothing
  | n == 1    = Nothing
  | otherwise = Just n

refrain :: Int -> Int
refrain n = n

vow :: [Int] -> [Int]
vow []     = []
vow (x:xs)  = case door x of
  Nothing -> vow xs
  Just y  -> refrain y : vow xs

unlit :: [Int]
unlit = [(-2),0,1,2,3,5]

echo :: [Int]
echo = vow unlit

ghost :: [Int]
ghost = if False then echo else []

main :: IO ()
main = return ()
