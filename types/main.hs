module Main where

import Funcs

add1 x = x + 1

main :: IO ()
main = do
    putStrLn "hi"
    print 1
    print ( removeNonUppercase "Hello There Human" )
    print . removeNonUppercase $ "Hello There Human"
    print( myMap add1 [1, 2, 3] )
    print( factorial 5 )