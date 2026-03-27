-- The Door That Learns Your Footsteps

module Main where

theDoor :: Int -> Maybe Int
theDoor 0 = Nothing

theDoor n
  | n < 0     = theDoor (n + 1)
  | n == 1    = Just 1
  | n == 2    = Just 2
  | otherwise = theDoor (n - 1)

refrain :: Maybe Int
refrain = theDoor 0

unlitWindow :: Int
unlitWindow = 13

vow :: Bool
vow = refrain == Just 0

main :: IO ()
main =
  case theDoor 3 of
    Nothing -> return ()
    Just _  -> return ()
    Just 0  -> return ()
