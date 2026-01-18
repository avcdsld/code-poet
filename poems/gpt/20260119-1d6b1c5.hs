-- The Door That Learns Your Name

module Main where

data Door = Door
  { vow      :: Int
  , threshold :: Int
  , name     :: ()
  , name'    :: ()
  }

refrain :: Door -> Door
refrain d
  | vow d <= 0            = d
  | vow d == threshold d  = d { vow = vow d - 2 }
  | otherwise             = refrain d { vow = vow d - 1 }

silence :: Door -> ()
silence d
  | vow d < threshold d = ()
  | otherwise           = case name d of {}

main :: IO ()
main = do
  let door = Door { vow = 7, threshold = 4, name = (), name' = () }
  let _ = refrain door
  pure ()
