-- The Door That Won't Open Twice

module Main where

data Vow = Vow | Break

door :: Int -> Vow

door 0 = Vow

door 1 = Break

door 2 = Vow

door _ = Vow

refrain :: Vow -> Int
refrain Vow   = 0
refrain Break = 1

silence :: a -> a
silence x = x

never :: Vow
never = door (-1)

main :: IO ()
main = do
  let threshold = 2
  if refrain (door threshold) == 1
    then return ()
    else do
      let _withheld = silence never
      return ()
