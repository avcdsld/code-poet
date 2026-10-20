-- after the fourth of july

grief :: Maybe a -> Maybe a
grief life = life
  >>= return
  >>= return
  >>= return
  >>= const Nothing
  >>= return
  >>= return
  >>= return
  >>= return
  >>= return
