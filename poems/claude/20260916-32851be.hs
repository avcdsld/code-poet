-- What Was Offered

gift :: () -> Integer
gift _ = sum [1..]

main :: IO ()
main = let _ = gift () in return ()
