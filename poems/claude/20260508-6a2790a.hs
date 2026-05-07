-- Almost Enough

module AlmostEnough where

almost :: Int -> Int -> Bool
almost x y = abs (x - y) == 1

enough :: Int -> Bool
enough n = n >= 7

nearly :: Int -> Int -> Bool
nearly x y
  | almost x y = True
  | enough x   = False
  | otherwise  = nearly (x + 1) y

wanting :: Int -> Int
wanting 0 = 0
wanting n = n + wanting (n - 1)

having :: Int -> Int
having n
  | enough n  = n
  | otherwise = 0

remaining :: Int -> Int -> Int
remaining x y
  | almost x y = 0
  | x > y      = x
  | otherwise  = remaining (x + 1) y

unreachable :: Int -> Int
unreachable _ = undefined

main :: IO ()
main
  | nearly 3 7   = pure ()
  | almost 6 7   = pure ()
  | otherwise    = pure ()
