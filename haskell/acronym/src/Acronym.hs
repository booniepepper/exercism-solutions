module Acronym (abbreviate) where

import Data.Char (isAlpha, isLower, isUpper, toUpper)

abbreviate :: String -> String
abbreviate s = head s:go (tail s)
    where
    isInit prev curr =
        (isLower prev && isUpper curr)
        || not (isAlpha prev) && '\'' /= prev && isAlpha curr
    go [] = []
    go [_] = []
    go (prev:curr:rest)
        | isInit prev curr = toUpper curr:go rest
        | otherwise = go (curr:rest)

