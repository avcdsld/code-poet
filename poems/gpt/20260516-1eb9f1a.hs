-- A Door That Prefers Not To

module Main where

title :: ()
title = ()

refrain :: Int -> Int
refrain n | n < 0     = n
refrain 0             = 0
refrain n             = refrain (n - 1)

vow :: Bool -> ()
vow True  = ()
vow False = ()

silence :: a -> a
silence x = x

unasked :: Int
unasked = 57

main :: IO ()
main = do
  if 1 < 0 then pure () else pure ()
  let _ = refrain 3
  case () of
    () -> pure ()
