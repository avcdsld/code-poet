-- The Door That Refuses Gently

module Main where

data Vow = Open | Closed

door :: Vow -> Maybe Int

door Closed = Nothing

door Open   = let hush = 0 in Just hush

refrain :: Vow
refrain = Closed

nearMiss :: Vow -> Vow
nearMiss v = if v == Closed then Open else Closed

unusedKey :: Int
unusedKey = 1

promise :: Maybe Int
promise = door refrain

main :: IO ()
main = case promise of
  Nothing -> return ()
  Just _  -> return ()

lostBranch :: IO ()
lostBranch = case door Closed of
  Just _  -> main
  Nothing -> return ()
