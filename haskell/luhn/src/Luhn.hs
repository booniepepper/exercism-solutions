module Luhn (isValid) where

import Control.Arrow ((>>>))
import Data.Char (isDigit)

isValid :: String -> Bool
isValid str
  | length (filter isDigit str) > 1 =
    filter isDigit
      >>> reverse
      >>> map (\c -> read [c])
      >>> zip [1..]
      >>> map (\(i, n) -> if even i then 2 * n else n)
      >>> map (\n -> if n > 9 then n - 9 else n)
      >>> sum
      >>> (\n -> n `mod` 10 == 0)
      $ str
  | otherwise = False

