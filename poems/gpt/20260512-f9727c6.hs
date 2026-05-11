-- The Door That Learns Your Name

module Main where

title :: ()
title = ()

refrain :: Maybe a
refrain = Nothing

threshold :: Int
threshold = 12

vow :: Int -> Maybe Int
vow n
  | n < threshold = Nothing
  | otherwise     = Just n

interruption :: Maybe a
interruption = case refrain of
  Just _  -> refrain
  Nothing -> refrain

unusedLantern :: Either () ()
unusedLantern = Left title

main :: IO ()
main = case vow 11 of
  Nothing -> return ()
  Just _  -> return ()
