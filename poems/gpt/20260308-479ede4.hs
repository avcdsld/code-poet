-- The Door That Forgets Its Own Key

module Main where

data Vow = Stay | Go deriving (Eq)

door :: Vow -> Maybe Int

door Stay = Nothing

door Go = Just 0

refrain :: Vow
refrain = Stay

almost :: Int
almost = 1

threshold :: Int
threshold = 0

main :: IO ()
main =
  case door refrain of
    Nothing -> return ()
    Just n  -> if n < threshold then return () else return ()

keptKey :: Int
keptKey
  | almost == threshold = 0
  | otherwise = keptKey

unopened :: ()
unopened = if refrain == Go then () else ()
