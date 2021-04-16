module DNA (nucleotideCounts, Nucleotide(..)) where

import Control.Monad (foldM)
import Data.Map (Map, alter, empty)
import Data.Maybe (fromMaybe)
import Text.Read (readMaybe)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Read, Show)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts = foldM count empty . map (\c -> readMaybe [c]) where
  count _ Nothing = Left "error"
  count acc (Just n) = Right $ alter (Just . succ . fromMaybe 0) n acc

