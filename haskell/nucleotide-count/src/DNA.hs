module DNA (nucleotideCounts, Nucleotide(..)) where

import Control.Monad (foldM)
import Data.Map (Map, insertWith, empty)
import Text.Read (readEither)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Read, Show)
type Counts = Map Nucleotide Int

nucleotideCounts :: String -> Either String Counts
nucleotideCounts = foldM count empty where
  count acc = fmap (countInto acc) . readEither . (:[])
  countInto counts = \n -> insertWith (+) n 1 counts

