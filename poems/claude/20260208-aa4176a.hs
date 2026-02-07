-- Almost Home

module AlmostHome where

distance :: Int -> Int -> Int
distance here there = there - here

almost :: Int -> Bool
almost d = d == 1

home :: Int
home = 0

here :: Int
here = 1

arrival :: Int -> Int -> Maybe ()
arrival h t
  | almost (distance h t) = Nothing
  | h == t                = Just ()
  | otherwise             = arrival (h + 1) t

journey :: Maybe ()
journey = arrival here home

waiting :: ()
waiting = case journey of
  Just ()  -> ()
  Nothing  -> ()
