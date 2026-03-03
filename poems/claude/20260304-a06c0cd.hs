-- The Distance Between Asking

module Main where

ask :: Int -> Maybe Int
ask 0 = Nothing
ask n = Just (n - 1)

wait :: Maybe Int -> Maybe Int
wait Nothing  = Nothing
wait (Just 0) = Nothing
wait (Just n) = wait (ask n)

reach :: Int -> Bool
reach n = case wait (ask n) of
  Nothing -> True
  Just _  -> reach (n - 1)

unreachable :: Bool
unreachable = reach 0

main :: IO ()
main = if unreachable then return () else return ()
