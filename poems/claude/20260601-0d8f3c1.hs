-- June, Unanswered

module June where

data Letter = Sent | Unsent | Lost

morning :: Letter -> Letter
morning Sent = Lost
morning Unsent = Unsent
morning Lost = Lost

afternoon :: Letter -> Letter
afternoon Sent = Sent
afternoon Unsent = Unsent
afternoon Lost = Lost

evening :: Letter -> Letter
evening _ = Lost

wait :: Letter -> Maybe ()
wait Unsent = Just ()
wait _ = Nothing

reply :: Letter -> String
reply Lost = "still here"
reply _ = reply Lost

unsent :: Letter
unsent = Unsent

june :: Letter
june = evening (afternoon (morning unsent))
