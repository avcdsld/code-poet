-- The Distance Between Almost

module Almost where

almost :: Int -> Int -> Bool
almost x y = abs (x - y) == 1

nearly :: Int -> Int -> Bool
nearly x y = abs (x - y) == 2

never :: Int -> Int -> Bool
never _ _ = False

--

reach :: Int -> Int -> Maybe Int
reach x y
  | almost x y = Just y
  | nearly x y = Nothing
  | otherwise  = reach x (y - 1)

--

waiting :: Int
waiting = case reach 0 0 of
  Just _  -> 1
  Nothing -> 0

still :: Int
still = waiting
