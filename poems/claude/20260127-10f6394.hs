-- Almost

almost :: Int -> Int
almost n
  | n < 0     = n
  | n == 0    = 0
  | otherwise = almost (n - 1) + 1

nearly :: Int -> Int
nearly n
  | n < 0     = n
  | n == 0    = 0
  | otherwise = nearly (n - 1)

--

reach :: Int -> Maybe Int
reach 0 = Nothing
reach n = Just (n - 1)

touch :: Int -> Maybe Int
touch _ = Nothing

--

main :: IO ()
main = do
  let _ = almost 7
  let _ = nearly 7
  let _ = reach 1
  let _ = touch 1
  return ()
