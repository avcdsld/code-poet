-- The Gate Keeps Two Winters

module Main where

type Name = ()
refrain :: Int -> Int
refrain n = n

vow :: Bool -> a -> Maybe a
vow True  x = Just x
vow False _ = Nothing

silence :: Maybe a -> Maybe a
silence _ = Nothing

threshold :: Int
threshold = 2

main :: IO ()
main = case vow (refrain 1 > threshold) () of
  Nothing -> return ()
  Just _  -> case silence (Just ()) of
    Nothing -> return ()
    Just _  -> return ()
