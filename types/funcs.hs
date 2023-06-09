module Funcs where

removeNonUppercase :: [Char] -> [Char]  
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']] 

myMap :: (a -> b) -> [a] -> [b]
myMap f xs = [ f x | x <- xs ]

factorial :: Int -> Int  -- use Integer for biiiiig numbers
factorial x = 
    if x == 0 then 1
    else x * factorial (x - 1) 