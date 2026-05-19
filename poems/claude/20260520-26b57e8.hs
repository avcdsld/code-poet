-- After the Threshold

module AfterTheThreshold where

still :: a -> a
still x = x

wait :: a -> a
wait x = x

wait' :: a -> a
wait' x = x

crossing :: Bool -> a -> Maybe a
crossing True  x = Just x
crossing False _ = Nothing

remain :: a -> Maybe a
remain = crossing False

depart :: a -> Maybe a
depart = crossing True

threshold :: Int
threshold = 0

before :: Int -> Bool
before n = n < threshold

after :: Int -> Bool
after n = n > threshold

at :: Int -> Bool
at _ = False

never :: a -> Maybe a
never _ = Nothing
