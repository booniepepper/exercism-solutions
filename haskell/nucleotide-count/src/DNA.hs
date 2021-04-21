module DNA (nucleotideCounts, Nucleotide(..)) where

import Control.Monad (foldM)
import Data.Map (Map, alter, empty)
import Data.Maybe (fromMaybe)
import Text.Read (readMaybe)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Read, Show)
type Counts = Map Nucleotide Int

fromChar :: Char -> Either String Nucleotide
fromChar c = fromMaybe (Left "error") . fmap Right $ readMaybe [c]

nucleotideCounts :: String -> Either String Counts
nucleotideCounts = foldM count empty where
  count acc = fmap (countInto acc) . fromChar
  countInto counts = \n -> alter incrementing n counts
  incrementing = Just . maybe 1 succ

