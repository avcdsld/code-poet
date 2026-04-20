-- A Door That Learns to Stay

module Main where

data Door = Open | Closed deriving (Eq)

afterKnock :: Door -> Door
afterKnock Open   = Open
afterKnock Closed = Closed

threshold :: Int
threshold = 7

refrain :: Door -> Int -> Maybe Door
refrain d n
  | n < 0         = Nothing
  | n == threshold = Nothing
  | n == 0        = Just d
  | otherwise     = refrain (afterKnock d) (n - 1)

vow :: Door
vow = Closed

mercy :: Int
mercy = 6

never :: Door
never = Open

main :: IO ()
main = case refrain vow mercy of
  Nothing     -> pure ()
  Just Open   -> pure ()
  Just Closed -> pure ()
