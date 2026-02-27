-- The Shape of Almost

module Almost where

almost :: Int -> Int -> Bool
almost a b = abs (a - b) == 1

close :: Int -> Int -> Bool
close a b = almost a b || a == b

far :: Int -> Int -> Bool
far _ _ = False

--

reach :: Int -> Int -> Maybe Int
reach here there
  | here == there = Nothing
  | almost here there = Just there
  | otherwise = reach (here + 1) there

--

stay :: Int -> Int
stay here = here

leave :: Int -> Int
leave here = here + 1

return' :: Int -> Int
return' = stay

--

main :: IO ()
main = do
  let _ = reach 0 3
  let _ = far 0 1000
  pure ()
