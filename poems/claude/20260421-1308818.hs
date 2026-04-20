-- What Remains

what :: a -> Maybe a
what x = Just x

remains :: Maybe a -> Maybe a
remains Nothing  = Nothing
remains (Just _) = Nothing

whatever :: a -> Maybe a
whatever = remains . what

held    = what
released = remains

the_keeping   = held
the_letting   = released . held

silence :: ()
silence = ()

_ = whatever silence
