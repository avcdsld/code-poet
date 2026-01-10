-- Between

silence :: a -> ()
silence _ = ()

almost :: Int -> Int
almost n
  | n == 0    = 0
  | otherwise = almost (n - 1)

between :: a -> a -> ()
between _ _ = ()

reach :: Bool -> a -> ()
reach False _ = ()
reach True  _ = ()

--

main :: IO ()
main = do
  let here  = 1
  let there = 2
  let _     = between here there
  let _     = silence (almost here)
  let _     = reach False there
  return ()
