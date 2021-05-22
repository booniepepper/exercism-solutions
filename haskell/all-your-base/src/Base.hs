module Base (Error(..), rebase) where

data Error a = InvalidInputBase | InvalidOutputBase | InvalidDigit a
    deriving (Show, Eq)

rebase :: Integral a => a -> a -> [a] -> Either (Error a) [a]
rebase inputBase outputBase inputDigits
  | inputBase < 2 = Left InvalidInputBase
  | outputBase < 2 = Left InvalidOutputBase
  | length invalidDigits > 0 = Left (InvalidDigit (head invalidDigits))
  | otherwise = Right (reverse . toBase . fromBase $ inputDigits)
  where
    fromBase xs = sum . zipWith (*) (reverse xs) $ [inputBase ^  k | k <- [0..length xs]]
    toBase 0 = []
    toBase x = x `mod` outputBase : toBase (x `div` outputBase)
    invalidDigits = filter (\x -> x < 0 || inputBase <= x) inputDigits
