module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear y = y % 4 && not (y % 100) || y % 400
  where
    a % b = a `mod` b == 0
