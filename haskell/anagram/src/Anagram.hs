module Anagram (anagramsFor) where

import Data.Char (toLower)
import Data.List (sort)

anagramsFor :: String -> [String] -> [String]
anagramsFor target = filter match
    where
        normalize = map toLower
        normalTgt = normalize target
        sortedTgt = sort normalTgt
        match candidate = sortedCnd == sortedTgt && normalCnd /= normalTgt
            where
                normalCnd = normalize candidate
                sortedCnd = sort normalCnd
        
