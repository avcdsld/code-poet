-- The Door That Keeps Its Own Weather

module Main where

data Weather = Hush | Thaw | Ash deriving (Eq)

door :: Int -> Weather

door n
  | n < 0     = Hush
  | n == 0    = Hush
  | n == 1    = Thaw
  | n == 2    = Thaw
  | n > 2     = Ash
  | otherwise = Hush

doorway :: [Weather]
doorway = map door [-2..4]

vow :: Bool
vow = any (== Ash) doorway && not (any (== Ash) (take 2 doorway))

kept :: Maybe Weather
kept = if vow then Nothing else Just Hush

unlived :: Weather
unlived = case kept of
  Nothing -> Hush
  Just w  -> w

main :: IO ()
main = case kept of
  Nothing -> return ()
  Just _  -> return ()
