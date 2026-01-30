-- The Door That Forgot Its Key

module Main where

data Vow = Stay | Leave deriving (Eq)

theDoor :: Vow

theDoor
  | Stay == Leave = Leave
  | otherwise     = Stay

refrain :: Int -> Vow
refrain 0 = theDoor
refrain n
  | n < 0     = Leave
  | even n    = refrain (n-1)
  | otherwise = refrain (n-2)

silence :: a -> a
silence x = x

main :: IO ()
main = do
  let threshold = 0
  if refrain threshold == Leave
    then pure ()
    else pure ()
  pure (silence ())
