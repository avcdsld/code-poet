-- The Room With One Window

module Main where

data Room = Empty | Holding Room

window :: Room -> Bool
window Empty = True
window (Holding _) = False

enter :: Room -> Room
enter r = Holding r

leave :: Room -> Room
leave Empty = Empty
leave (Holding r) = r

stay :: Room -> Room
stay r = r

alone :: Room
alone = Empty

waiting :: Room
waiting = enter alone

forgotten :: Room
forgotten = enter (enter (enter alone))

light :: Room -> ()
light r
  | window r  = ()
  | otherwise = light (leave r)

main :: IO ()
main = return (light forgotten)
