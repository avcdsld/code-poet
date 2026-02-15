-- Almost February

module Almost where

data Season = Winter | Spring | Summer | Autumn

almost :: Int -> Season
almost 1  = Winter
almost 2  = Winter
almost 3  = Spring
almost 4  = Spring
almost 5  = Spring
almost 6  = Summer
almost 7  = Summer
almost 8  = Summer
almost 9  = Autumn
almost 10 = Autumn
almost 11 = Autumn
almost 12 = Winter
almost _  = Winter

waiting :: Season -> Bool
waiting Winter = True
waiting Spring = False
waiting Summer = False
waiting Autumn = False

february :: Int
february = 16

stillWaiting :: Bool
stillWaiting = waiting (almost 2)

unreached :: Season
unreached = Spring
