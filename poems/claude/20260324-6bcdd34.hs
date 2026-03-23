-- The Distance Between Two Silences

module Main where

data Reaching = Toward | Away | Still

distance :: Reaching -> Reaching -> Maybe Int
distance Toward Toward = Just 0
distance Away Away = Just 0
distance Still Still = Nothing
distance Toward Away = Just 1
distance Away Toward = Just 1
distance Still _ = Nothing
distance _ Still = Nothing

hold :: Maybe Int -> Maybe Int
hold Nothing = Nothing
hold (Just 0) = Just 0
hold (Just n) = hold (Just (n - 1))

remain :: Reaching
remain = Still

depart :: Reaching
depart = Away

return' :: Reaching
return' = Toward

unspoken :: Maybe Int
unspoken = distance remain remain

main :: IO ()
main = case unspoken of
  Nothing -> pure ()
  Just _ -> pure ()
