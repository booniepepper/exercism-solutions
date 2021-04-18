module DNA (nucleotideCounts, Nucleotide(..)) where

import Control.Monad (foldM)
import Data.Map (Map, alter, empty)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Read, Show)
type Counts = Map Nucleotide Int

fromChar :: Char -> Either String Nucleotide
fromChar c
  | c `elem` "ACGT" = Right (read [c])
  | otherwise = Left "error"

nucleotideCounts :: String -> Either String Counts
nucleotideCounts = foldM count empty where
  count :: Counts -> Char -> Either String Counts
  count acc = fmap (\n -> alter (Just . maybe 1 succ) n acc) . fromChar

