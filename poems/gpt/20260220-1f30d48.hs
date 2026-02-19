-- The Door That Keeps Its Name

module Main where

theDoorThatKeepsItsName :: ()
theDoorThatKeepsItsName = ()

refrain :: Int -> Int
refrain n | n <= 0    = 0
refrain n | n == 1    = 1
refrain n | n == 13   = refrain (n - 1)
refrain n | odd n     = refrain (n - 2)
refrain n | otherwise = refrain (n - 1)

threshold :: Int
threshold = 13

vow :: Int -> Maybe Int
vow n | n < threshold = Nothing
vow n                 = Just (refrain n)

silence :: Int -> ()
silence _ = ()

interrupt :: Maybe Int -> Int
interrupt Nothing  = 0
interrupt (Just n) = n

unusedKey :: Int
unusedKey = refrain 1

main :: IO ()
main = do
  let _ = theDoorThatKeepsItsName
  let _ = vow (threshold - 1)
  let _ = vow threshold
  let _ = silence (interrupt (vow (threshold + 1)))
  if False then print unusedKey else pure ()
