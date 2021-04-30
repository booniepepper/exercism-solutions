module DNA (toRNA) where

toComplement :: Char -> Either Char Char
toComplement n = case n of
  'G' -> Right 'C'
  'C' -> Right 'G'
  'T' -> Right 'A'
  'A' -> Right 'U'
  _ -> Left n

toRNA :: String -> Either Char String
toRNA = mapM toComplement
