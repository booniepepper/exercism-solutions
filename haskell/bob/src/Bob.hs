module Bob (responseFor) where

import Data.Char (isAlpha, isLower)
import Data.List.Extra (trim)

responseFor :: String -> String
responseFor xs
    | null (trim xs) = "Fine. Be that way!"
    | isQuestion && isScreaming = "Calm down, I know what I'm doing!"
    | isQuestion = "Sure."
    | isScreaming = "Whoa, chill out!"
    | otherwise = "Whatever."
    where
        letters = filter isAlpha xs
        isQuestion = '?' == (last . trim $ xs)
        isScreaming = not (null letters || any isLower letters)

