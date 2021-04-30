module Prime (nth) where

import Data.Numbers.Primes (primes)

nth :: Int -> Maybe Integer
nth n
  | n < 1 = Nothing
  | otherwise = Just (primes !! (n -1))
