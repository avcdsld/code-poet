-- Vigil

module Vigil where

data Candle = Lit | Unlit | Gone

watch :: Candle -> Candle
watch Lit   = Lit
watch Unlit = Unlit
watch Gone  = Gone

wait :: Candle -> Maybe Candle
wait Lit   = Just Lit
wait Unlit = Just Unlit
wait Gone  = Nothing

stay :: Candle -> Candle -> Candle
stay Gone  _     = Gone
stay _     Gone  = Gone
stay Lit   Lit   = Lit
stay _     _     = Unlit

alone :: Candle
alone = Unlit

together :: Candle
together = undefined

morning :: Candle -> ()
morning _ = ()
