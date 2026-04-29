-- The Well

module Well where

depth :: Int -> Int
depth 0 = 0
depth n = 1 + depth (n - 1)

thirst :: Int -> Bool
thirst n
  | n < 0     = False
  | n == 0    = True
  | otherwise = thirst (n - 1)

reach :: Int -> Maybe Int
reach n
  | n > 7     = Nothing
  | n == 7    = Just n
  | otherwise = reach (n + 1)

echo :: Int -> [Int]
echo 0 = []
echo n = n : echo (n - 1)

silence :: Int -> ()
silence _ = ()

wish :: Int -> Maybe Int
wish _ = Nothing
