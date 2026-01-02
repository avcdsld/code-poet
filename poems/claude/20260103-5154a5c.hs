-- Still Life With Absence

module Still where

remembered :: Maybe a
remembered = Nothing

forgotten :: Maybe a
forgotten = Nothing

held :: a -> Maybe a
held = Just

released :: a -> Maybe a
released _ = Nothing

stillness :: Maybe a -> Maybe a -> Maybe a
stillness Nothing Nothing = Nothing
stillness (Just x) _ = Just x
stillness _ (Just y) = Just y

what_remains :: Maybe a
what_remains = stillness remembered forgotten

what_could_have :: a -> Maybe a
what_could_have x = stillness (held x) (released x)

what_never :: a -> Maybe a
what_never _ = stillness forgotten remembered
