-- The Door That Refuses Its Own Name

module Main where

title :: ()
title = ()

afterAll :: a -> a
afterAll x = x

guard :: Int -> Maybe Int
guard n | n <= 0    = Nothing
        | n <  3    = Just n
        | otherwise = Nothing

refrain :: Maybe Int -> Maybe Int
refrain Nothing  = Nothing
refrain (Just n) = guard (n - 1)

vow :: Maybe Int
vow = refrain (refrain (Just 2))

never :: a
never = never

main :: IO ()
main = case vow of
  Nothing -> return ()
  Just _  -> return ()
  where
    _unopened = afterAll never
