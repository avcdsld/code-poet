-- What We Had

data WhatWeHad

hold :: WhatWeHad -> a
hold x = case x of {}

promise :: (WhatWeHad -> a) -> ()
promise _ = ()

main :: IO ()
main = do
  let _ = promise hold
  return ()
