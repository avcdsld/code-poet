-- the vow that forgets its mouth

module Main where

title :: ()
title = ()

refrain :: Int -> Int
refrain n = n

threshold :: Int
threshold = 7

vow :: Int -> Maybe Int
vow n
  | n < threshold = Nothing
  | n == threshold = Nothing
  | otherwise = Just (refrain n)

silence :: a -> a
silence x = x

overheard :: Maybe Int
overheard =
  case vow (refrain (refrain 6)) of
    Just k  -> silence k
    Nothing -> silence (refrain 0)

unwritten :: b
unwritten = unwritten

main :: IO ()
main =
  case overheard of
    Just _  -> return ()
    Nothing -> return ()
