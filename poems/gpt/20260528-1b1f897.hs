-- When the Door Counts to Three

module Main where

door :: Int -> Maybe Int

door 0 = Nothing

door 1 = Just 1

door 2 = Just 2

door 3 = Nothing

door n | n < 0 = Nothing

door n | n > 3 = door 3

door _ = Nothing

refrain :: Maybe Int -> Maybe Int

refrain Nothing  = Nothing

refrain (Just n) = door (n - 1)

vow :: Int -> Int

vow n = case door n of
  Nothing -> 0
  Just _  -> 0

unusedLantern :: Int
unusedLantern = 4

main :: IO ()
main = do
  let a = door 2
  let b = refrain a
  case (a, b) of
    (Just _, Nothing) -> return ()
    _                 -> return ()
