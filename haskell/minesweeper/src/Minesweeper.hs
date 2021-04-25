module Minesweeper (annotate) where

import Data.Char (intToDigit)

type Board = [[Char]]

annotate :: Board -> Board
annotate board = result where

  result = map (map toPiece) coordBoard
  coordBoard = toCoords board

  toCoords =
    map (\(row, spaces) -> zip [(row, col) | col <- [1..]] spaces)
    . zip [1..]

  toPiece (_, '*') = '*'
  toPiece ((row, col), _) =
    (\c -> if c == '0' then ' ' else c)
    . intToDigit
    . length
    . filter (elem '*')
    . map (\(rOff, cOff) -> lookup (row+rOff, col+cOff) coords)
    $ offsets

  coords = concat coordBoard

  offsets :: [(Int, Int)]
  offsets = [(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)]

