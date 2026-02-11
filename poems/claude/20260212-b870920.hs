-- Thresholds

module Thresholds where

data Vow = Kept | Broken | Unspoken

threshold :: Int -> Vow
threshold n
  | n < 0     = Unspoken
  | n == 0    = Kept
  | otherwise = Broken

--

witness :: Vow -> Vow
witness Kept     = Kept
witness Broken   = Broken
witness Unspoken = Unspoken

--

silence :: a -> ()
silence _ = ()

refusal :: Int -> Maybe Vow
refusal n
  | n > 100   = Nothing
  | n > 50    = Nothing
  | n > 0     = Just Broken
  | n == 0    = Just Kept
  | otherwise = Nothing

--

unreachable :: Vow
unreachable = Unspoken

forgotten :: Vow -> ()
forgotten = silence
