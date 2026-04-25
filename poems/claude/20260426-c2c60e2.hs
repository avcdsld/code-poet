-- Between Shores

module BetweenShores where

shore :: Int -> Int
shore 0 = 0
shore 1 = 1
shore _ = shore 0

crossing :: Int -> Maybe Int
crossing distance
  | distance < 0  = Nothing
  | distance == 0 = Just 0
  | distance > 0  = Nothing

return_voyage :: Int -> Int
return_voyage = shore . shore . shore

still_water :: a -> a
still_water x = x

the_other_shore :: Int
the_other_shore = undefined

arrival :: ()
arrival = ()
