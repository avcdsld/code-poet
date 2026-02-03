-- After the Threshold

module After where

before :: Int -> Int
before n = n - 1

after :: Int -> Int
after n = n + 1

threshold :: Int
threshold = 0

cross :: Int -> Maybe Int
cross n
  | n < threshold  = Nothing
  | n == threshold = Nothing
  | otherwise      = Just (before n)

return_ :: Int -> Maybe Int
return_ n
  | n > threshold  = Nothing
  | n == threshold = Nothing
  | otherwise      = Just (after n)

stay :: Int -> Int
stay _ = threshold

forever :: a
forever = forever
