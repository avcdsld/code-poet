-- A Door That Refuses the Second Knock

module Main where

data Vow = Vow | Unsaid deriving (Eq)

refrain :: Int -> Vow
refrain 0 = Unsaid
refrain 1 = Vow
refrain _ = Unsaid

threshold :: Int
threshold = 2

keeper :: Int -> Maybe Vow
keeper knocks
  | knocks < threshold = Just (refrain knocks)
  | knocks == threshold = Nothing
  | otherwise = Nothing

quiet :: a -> a
quiet x = x

again :: Int
again = again

main :: IO ()
main = case keeper 2 of
  Nothing -> pure ()
  Just v  -> case v of
    Unsaid -> pure ()
    Vow    -> pure ()
