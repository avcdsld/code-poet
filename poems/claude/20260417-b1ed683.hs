-- The Distance Between Two Lights

module Main where

morning :: Int -> Int
morning 0 = 0
morning n = n + morning (n - 1)

evening :: Int -> Int
evening 0 = 0
evening n = n - 1

between :: Int -> Int -> Int
between a b
  | a == b    = 0
  | a > b     = between b a
  | otherwise = b - a

--

light :: Int
light = morning 7

dark :: Int
dark = evening 7

silence :: Int
silence = between light dark

unreachable :: Int -> Int
unreachable n
  | n < 0     = n
  | otherwise = unreachable n

--

main :: IO ()
main = do
  let _ = silence
  return ()
