module SumOfMultiples (sumOfMultiples) where

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples [] _ = 0
sumOfMultiples factors limit = sum [ n | n <- [1 .. limit-1], isMultiple n] where
  isMultiple n = any (isDivisible n) safeFactors
  isDivisible n divisor = n `mod` divisor == 0
  safeFactors = filter (/= 0) factors

