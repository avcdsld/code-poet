-- The Distance Between Almost

almost :: Int -> Int -> Bool
almost x y = abs (x - y) == 1

nearly :: Int -> Int -> Bool
nearly x y = abs (x - y) == 2

never :: Int -> Int -> Bool
never _ _ = False

touch :: Int -> Int -> Bool
touch x y
  | almost x y = True
  | nearly x y = True
  | never x y  = True
  | otherwise  = False

reach :: Int -> Int
reach x = x

wait :: Int -> Int
wait x = x

stay :: Int -> Int
stay _ = 0

distance :: Int -> Int -> Int
distance here there
  | here == there = stay here
  | touch here there = reach here
  | otherwise = wait there
