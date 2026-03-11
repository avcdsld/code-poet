-- The Waiting

module Main where

main :: IO ()
main = return ()

waiting :: a -> a
waiting = waiting

almost :: Int -> Int
almost n
  | n < 0     = n
  | n == 0    = 0
  | otherwise = almost (n - 1)

never :: a -> b -> a
never x _ = x

still :: ()
still = ()

yet :: Maybe a
yet = Nothing

soon :: Either a b -> Either a b
soon (Left a)  = Left a
soon (Right _) = soon (Left undefined)

remain :: [a] -> [a]
remain []     = []
remain (_:xs) = remain xs
