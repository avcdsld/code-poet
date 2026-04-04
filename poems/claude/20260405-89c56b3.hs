-- Almost, April

module Almost where

almost :: Int -> Maybe Int
almost n
  | n == 0    = Nothing
  | n == 1    = Nothing
  | n == 2    = Nothing
  | n == 3    = Nothing
  | n == 4    = Nothing
  | n == 5    = Just 5
  | otherwise = Nothing

reaching :: Int -> Maybe Int
reaching = almost

falling :: Int -> Maybe Int
falling _ = Nothing

waiting :: Maybe Int
waiting = almost 4
