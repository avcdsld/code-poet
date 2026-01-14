-- The Distance Between Two Silences

module Main where

distance :: Int -> Int -> Maybe Int
distance here there
  | here == there = Nothing
  | here >  there = Nothing
  | otherwise     = Just (there - here)

reach :: Maybe Int -> Int
reach Nothing  = 0
reach (Just d) = d

silence :: Int
silence = reach (distance 0 0)

another :: Int
another = reach (distance 0 1)

the_space_between :: Int
the_space_between = another - silence

main :: IO ()
main = return ()
