-- What Never Ends

import Data.Function (fix)

grief :: [()]
grief = fix (() :)

main :: IO ()
main = mapM_ print (take 1 grief)
