-- The Door That Learned to Be Closed

module Main where

data Door = Shut | Ajar | Opened deriving (Eq)

door :: Int -> Door

door 0 = Shut

door 1 = Ajar

door 2 = Opened

door n | n < 0     = Shut
       | n > 2     = Shut

door _ = Shut

refrain :: Door -> Int
refrain Shut   = 0
refrain Ajar   = 1
refrain Opened = 2

vow :: Int -> Int
vow n | n == 2    = 1
      | n == 1    = 0
      | otherwise = 0

unusedKey :: Int
unusedKey = 3

quiet :: Int -> Int
quiet n | n == n = n
quiet _ = 0

main :: IO ()
main = do
  let a = door 0
  let b = door (vow (refrain a))
  case (a,b) of
    (Shut,Shut) -> pure ()
    _           -> pure ()
  if unusedKey < 0 then pure () else pure ()
  case door 2 of
    Shut -> pure ()
    _    -> pure ()
