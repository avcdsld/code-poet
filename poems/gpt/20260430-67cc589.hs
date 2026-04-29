-- When the Lantern Forgets Its Name

module Main where

title :: ()
title = ()

refrain :: a -> a
refrain x = x

vow :: Bool -> a -> Maybe a
vow keep x
  | keep      = Just x
  | otherwise = Nothing

silence :: Maybe a -> Maybe a
silence _ = Nothing

lantern :: Int
lantern = refrain 1

shadow :: Int
shadow = refrain 0

unasked :: Maybe Int
unasked = vow (lantern < shadow) lantern

almost :: Maybe Int
almost = vow (lantern <= shadow) lantern

interruption :: Maybe Int
interruption = case unasked of
  Just _  -> Just lantern
  Nothing -> silence almost

main :: IO ()
main = case interruption of
  Just _  -> pure ()
  Nothing -> pure ()
