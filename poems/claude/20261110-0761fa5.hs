-- What I Carry

data Longing = Longing Longing

forever :: Longing
forever = Longing forever

reach :: Int -> Longing -> Int
reach n (Longing rest) = reach (n + 1) rest

depth :: Int
depth = reach 0 forever
