module Main where

doubleMe x = 2*x

main :: IO ()
main = do 
    putStrLn "hi"
    putStrLn (show (doubleMe 5))
