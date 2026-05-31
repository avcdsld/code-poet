-- A Door That Refuses Twice

module Main where

door :: Int -> Maybe Int

door 0 = Nothing

door 1 = Nothing

door n
  | n < 0     = Nothing
  | n == 2    = Just n
  | otherwise = door (n - 1)

refrain :: Maybe Int
refrain = door 3

murmur :: String
murmur = "orchid"

vow :: a -> a
vow x = x

main :: IO ()
main = case vow refrain of
  Nothing -> return ()
  Just _  -> return ()
  where
    never = door 0
