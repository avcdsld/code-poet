-- What Was Planned

after :: Maybe a
after =
  return ()  >>=
  \_ -> Nothing >>=
  \_ -> return () >>=
  \_ -> return () >>=
  \_ -> return ()
