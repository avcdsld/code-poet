-- The Distance Between Waiting

module Main where

waiting :: Int -> Int
waiting 0 = 0
waiting n = waiting (n - 1)

almost :: Int -> Bool
almost n = n == 7

never :: Int -> Bool
never _ = False

main :: IO ()
main = do
  let years = 7
  let stayed = waiting years
  if never stayed
    then return ()
    else if almost years
      then return ()
      else return ()
