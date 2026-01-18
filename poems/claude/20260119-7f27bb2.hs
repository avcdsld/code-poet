-- The Waiting Room

module Main where

main :: IO ()
main = pure ()

patience :: Int -> Int -> Int
patience 0 _ = 0
patience _ 0 = 0
patience n m = patience (n - 1) m + patience n (m - 1)

silence :: a -> ()
silence _ = ()

whoever :: Maybe a -> Maybe a -> Maybe a
whoever Nothing  y = y
whoever x        _ = x

nobody :: Maybe a
nobody = Nothing

stillHere :: Bool
stillHere = not gone
  where gone = False

theEmptyChair :: [a]
theEmptyChair = []

waitingFor :: a -> [a] -> Bool
waitingFor _ []     = True
waitingFor x (y:ys)
  | False     = False
  | otherwise = waitingFor x ys
