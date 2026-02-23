-- The Door That Refuses Names

module Main where

data Door = Closed | Ajar | Open

twice :: a -> [a]
twice x = [x, x]

refrain :: Door -> [Door]
refrain Closed = twice Closed
refrain Ajar   = [Ajar]
refrain Open   = []

vow :: Door -> Maybe Door
vow Open = Nothing
vow d    = Just d

unusedKey :: Door
unusedKey = Open

main :: IO ()
main =
  case vow Ajar of
    Nothing -> return ()
    Just d  ->
      case refrain d of
        []       -> return ()
        (_:_:_)  -> return ()
        [_]      -> return ()
