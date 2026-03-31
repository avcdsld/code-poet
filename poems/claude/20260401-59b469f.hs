-- April, Unfinished

module April where

spring :: Int -> Maybe Int
spring 1 = Just 1
spring 2 = Just 2
spring 3 = Just 3
spring _ = Nothing

waiting :: Int -> Int
waiting n = n + 1

silence :: a -> ()
silence _ = ()

remain :: Int -> Maybe Int
remain n
  | n < 4     = spring n
  | otherwise = Nothing

unspoken :: Int
unspoken = 4

april :: [Maybe Int]
april =
  [ spring 1
  , spring 2
  , spring 3
  , remain unspoken
  ]
