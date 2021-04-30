module Grains (square, total) where

chessboard :: [(Integer, Integer)]
chessboard = zip [1 ..] . map (2 ^) $ [0 .. 63]

square :: Integer -> Maybe Integer
square n = lookup n chessboard

total :: Integer
total = sum . map snd $ chessboard
