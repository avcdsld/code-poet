-- A Door That Refuses Twice

module Main where

type Vow = Int

refrain :: Vow -> Maybe Vow
refrain 0 = Nothing
refrain 1 = Nothing
refrain n
  | n < 0     = Nothing
  | otherwise = Just (n - 2)

silence :: Maybe a -> Maybe a
silence _ = Nothing

unasked :: Vow
unasked = 7

main :: IO ()
main = case refrain unasked of
  Nothing -> pure ()
  Just _  -> case silence (refrain 2) of
    Nothing -> pure ()
    Just _  -> pure ()
