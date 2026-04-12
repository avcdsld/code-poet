-- The Distance Between

module Distance where

here :: Int
here = 0

there :: Int
there = here + 1 + 1 + 1

still :: Int -> Int
still x = x

moving :: Int -> Int
moving x = x + 1

moving' :: Int -> Int
moving' x = x + 1

moving'' :: Int -> Int
moving'' x = x + 1

arrival :: Int -> Bool
arrival x
  | x < there  = False
  | x == there = True
  | otherwise  = undefined

journey :: Int -> Int
journey x
  | arrival x = still x
  | otherwise = journey (moving x)

wait :: Int -> Int
wait _ = here

return' :: Int
return' = journey here
