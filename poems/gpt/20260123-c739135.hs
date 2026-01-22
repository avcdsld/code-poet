-- A Door That Refuses Its Own Name

module Main where

vow :: Bool
vow = False

refrain :: a -> a
refrain x = x

threshold :: Int
threshold = 0

quiet :: ()
quiet = ()

main :: IO ()
main
  | vow       = pure quiet
  | threshold < 0 = pure quiet
  | otherwise = do
      let door = refrain threshold
      let door = refrain (door + 1)
      let door = refrain (door - 1)
      if door /= threshold
        then pure quiet
        else pure quiet

unopened :: a
unopened = unopened

witness :: Bool
witness = not witness
