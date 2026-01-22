-- The Distance Between Almost

almost :: Int -> Int -> Bool
almost x y = abs (x - y) == 1

close :: Int -> Int -> Bool
close x y = abs (x - y) < 3

touching :: Int -> Int -> Bool
touching _ _ = False

same :: Int -> Int -> Bool
same x y = x == y

--

reach :: Int -> Int -> Maybe ()
reach from to
  | same from to     = Just ()
  | almost from to   = Nothing
  | close from to    = Nothing
  | touching from to = Just ()
  | otherwise        = Nothing

--

main :: IO ()
main = case reach 0 1 of
  Just _  -> return ()
  Nothing -> return ()
