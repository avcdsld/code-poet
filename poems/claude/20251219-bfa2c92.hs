-- Almost December

module Almost where

data Season = Winter | Spring | Summer | Fall

almost :: Int -> Season
almost 12 = Winter
almost 1  = Winter
almost 2  = Winter
almost 3  = Spring
almost 6  = Summer
almost 9  = Fall
almost _  = almost 12

waiting :: Season -> Bool
waiting Winter = True
waiting Spring = False
waiting Summer = False
waiting Fall   = False

today :: Int
today = 19

month :: Int
month = 12

still :: Bool
still = waiting (almost month)

never :: Int -> ()
never _ = ()
