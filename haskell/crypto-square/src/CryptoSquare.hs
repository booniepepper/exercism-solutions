module CryptoSquare (encode) where

import Data.Char
import Data.List

normalize :: String -> String
normalize = map toLower . filter isAlphaNum

encode :: String -> String
encode raw = (unwords . transpose . chunk . normalize) raw
  where
    n = ((floor :: Double -> Int) . sqrt . fromIntegral . length) raw
    chunk [] = []
    chunk s = take n s : chunk (drop n s)
