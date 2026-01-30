-- Almost February

module Almost where

data Month = January | February | March

waiting :: Month -> Bool
waiting January = True
waiting February = False
waiting _ = False

almost :: Int -> Month
almost 31 = January
almost 1 = February
almost _ = March

today :: Int
today = 31

tomorrow :: Int
tomorrow = 1

still :: Bool
still = waiting (almost today)

not_yet :: Bool
not_yet = waiting (almost tomorrow)

--

threshold :: Int -> ()
threshold n
  | n < 31    = ()
  | n == 31   = ()
  | otherwise = undefined
