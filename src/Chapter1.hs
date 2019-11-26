module Chapter1
    ( divides
    , ldf
    , ldf'
    , prime0
    , mnmInt
    , maxInt
    ) where

divides :: Integer -> Integer -> Bool
divides d n = rem n d == 0

ld :: Integer -> Integer
ld n = ldf 2 n

ldf :: Integer -> Integer -> Integer
ldf k n | divides k n   = k
        | k^2 > n       = n
        | otherwise     = ldf (k+1) n

ldf' :: Integer -> Integer -> Integer
ldf' k n
    | divides k n   = k
    | k^2 >= n      = n
    | otherwise     = ldf (k+1) n

prime0 :: Integer -> Bool
prime0 n 
    | n < 1     = error "not a positive integer"
    | n == 1    = False
    | otherwise = ld n == n

mnmInt :: [Int] -> Int
mnmInt [] = error "empty list"
mnmInt [x] = x
mnmInt (x:xs) = min x (mnmInt xs)

min' :: Int -> Int -> Int
min' x y 
    | x < y     = x
    | otherwise = y

maxInt :: [Int] -> Int
maxInt [] = error "empty list"
maxInt [x] = x
maxInt (x:xs) = max x (maxInt xs)
