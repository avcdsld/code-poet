-- What We Keep

data Memory = Memory (Maybe Memory)

fade :: Memory -> Memory
fade (Memory Nothing)  = Memory Nothing
fade (Memory (Just m)) = fade m

childhood :: Memory
childhood = Memory (Just (Memory (Just (Memory Nothing))))

what_remains :: Memory
what_remains = fade childhood
