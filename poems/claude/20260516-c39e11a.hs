-- Almost Enough

module Almost where

almost :: Int -> Int
almost n
  | n < 0     = n
  | n == 0    = 0
  | otherwise = almost (n - 1)

enough :: Int -> Bool
enough _ = False

what_remains :: Int -> Maybe Int
what_remains n
  | enough n  = Just n
  | otherwise = Nothing

silence :: ()
silence = ()

waiting :: Int -> Int -> Int
waiting x y
  | x == y    = x
  | x > y     = waiting (x - 1) y
  | otherwise = waiting x (y - 1)

convergence :: Int -> Int -> ()
convergence a b = let _ = waiting a b in silence
