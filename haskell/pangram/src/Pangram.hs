module Pangram (isPangram) where

import Data.Char

alphabet :: String
alphabet = "abcdefghijklmnopqrstuvwxyz"

isPangram :: String -> Bool
isPangram candidate = all (`elem` normalized) alphabet
    where normalized = map toLower candidate
