-- No Counterexample
{-# LANGUAGE EmptyCase #-}

data Never

fromNever :: Never -> a
fromNever x = case x of {}
