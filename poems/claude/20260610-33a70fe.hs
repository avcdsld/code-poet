-- We Were Standing Right Next To Each Other

data Us = Us

instance Eq Us where
  _ == _ = False

instance Show Us where
  show _ = "Us"

main :: IO ()
main = print (Us == Us)
