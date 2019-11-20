module Chapter1
    ( divides
    ) where

divides :: Integer -> Integer -> Bool
divides d n = rem n d == 0

