-- After

after :: Maybe ()
after = return ()
    >>= \_ -> Nothing
    >>= \_ -> return ()
    >>= \_ -> return ()
    >>= \_ -> return ()
    >>= \_ -> return ()
    >>= \_ -> return ()
