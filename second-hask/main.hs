module Main where

import Exercises

doubleMe x = x + x

doubleSmallNum x = if x > 100 then x else doubleMe x

lostNums = [1, 2, 3, 4]

println x = putStrLn (show (x))


first24MultiplesOf13 = take 24 [13, 26..]

main :: IO ()
main = do
    putStrLn (show (doubleSmallNum 120))
    putStrLn (show (lostNums))
    println(lostNums)

    println( findK 4 [1,3..])
    println( findK 6 [ x*x | x <- [1..]])
    println( isPalindrome [1, 3, 1])
    println( duplicate2 [1, 2, 3])
    println( nplicate2 5 [1, 2, 3])
    println( ziplike [1, 2, 3] ['a', 'b', 'c'])
    println( splitAtIndex 3 [1, 2, 3, 4, 5, 6])
    println( dropK 3 [0, 0, 0, 3, 0, 0, 0] )