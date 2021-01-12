{-# LANGUAGE MultiParamTypeClasses, TypeSynonymInstances, FlexibleInstances #-}
module DNA (toRNA) where

class DNA err ok where
    toRNA :: ok -> Either err ok
instance DNA Char Char where
    toRNA n = case n of
        'G' -> Right 'C'
        'C' -> Right 'G'
        'T' -> Right 'A'
        'A' -> Right 'U'
        _ -> Left n
instance DNA Char String where
    toRNA = mapM toRNA

