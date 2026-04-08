-- The Ordinary Distance

morning :: Int -> Int
morning x = x + 1

evening :: Int -> Int
evening x = x - 1

still :: Int -> Int
still x = x

days :: Int -> [Int]
days 0 = []
days n = morning n : evening n : days (n - 1)

years :: Int -> [Int]
years n
  | n < 0     = []
  | n == 0    = [still 0]
  | otherwise = days n ++ years (n - 1)

forgotten :: Int -> Int
forgotten _ = undefined

main :: IO ()
main = do
  let distance = years 3
  let _ = forgotten 7
  return ()
