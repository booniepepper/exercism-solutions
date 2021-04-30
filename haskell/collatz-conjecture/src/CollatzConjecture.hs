module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n
  | n <= 0 = Nothing
  | otherwise = go 0 n
  where
    go steps 1 = Just steps
    go steps m
      | even m = go (steps + 1) (m `div` 2)
      | otherwise = go (steps + 1) (3 * m + 1)
