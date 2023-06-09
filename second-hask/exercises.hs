module Exercises where

-- Find the element at index k in list l
-- For example: "findK 2 [0,0,1,0,0,0]" returns 1
findK k list = list !! k



-- Determine if list l is a palindrome
isPalindrome l = l == reverse l



{-
 - Duplicate the elements in list xs, for example "duplicate [1,2,3]" would give the list [1,1,2,2,3,3]
 - Hint: The "concat [l]" function flattens a list of lists into a single list. 
 - (You can see the function definition by typing ":t concat" into the interpreter. Perhaps try this with other variables and functions)
 -
 - For example: concat [[1,2,3],[3,4,5]] returns [1,2,3,3,4,5]
 -}
duplicate xs = [ x | x <- xs, _ <- [1..2] ]

duplicate2 xs = concat [ [x, x] | x <- xs ]

nplicate n xs = [ x | x <- xs, _ <- [1..n] ]

nplicate2 n xs = concatMap (take n . repeat) xs



{-
 - Imitate the functinality of zip
 - The function "min x y" returns the lower of values x and y
 - For example "ziplike [1,2,3] ['a', 'b', 'c', 'd']" returns [(1,'a'), (2, 'b'), (3, 'c')]
 -}
ziplike xs ys = [(xs !! k, ys !! k) | k <- [0..min (length xs) (length ys) - 1]]



-- Split a list l at element k into a tuple: The first part up to and including k, the second part after k
-- For example "splitAtIndex 3 [1,1,1,2,2,2]" returns ([1,1,1],[2,2,2])
splitAtIndex k l = (take k l, drop k l)



-- Drop the element at index k in list l
-- For example "dropK 3 [0,0,0,1,0,0,0]" returns [0,0,0,0,0,0]
dropK k l = concat [ take k l, drop (k + 1) l]



-- Extract elements between ith and kth element in list l. Including i, but not k
-- For example, "slice 3 6 [0,0,0,1,2,3,0,0,0]" returns [1,2,3]
slice i j l = [ l !! k | k <- [i..(j - 1)] ]

slice2 i j l = drop i (take j l)



-- Insert element x in list l at index k
-- For example, "insertElem 2 5 [0,0,0,0,0,0]" returns [0,0,0,0,0,2,0]
insertElem x k lst = concat[ take k lst, [x], drop k lst]



-- Rotate list l n places left.
-- For example, "rotate 2 [1,2,3,4,5]" gives [3,4,5,1,2]
rotate n l =  slice2 (n) (n + length l) (cycle l)



-- FizzBuzz
fizzbuzz range = [ 
    if x `mod` 15 == 0 then "FizzBuzz" 
    else if x `mod` 5 == 0 then "Buzz"
    else if x `mod` 3 == 0 then "Fizz"
    else show x 
    | x <- range ]

fizzbuzz2 range = map fizzbuzzWord range
    where
        fizzbuzzWord x = 
            if x `mod` 15 == 0 then "FizzBuzz" 
            else if x `mod` 5 == 0 then "Buzz"
            else if x `mod` 3 == 0 then "Fizz"
            else show x 
{-
        fizzbuzzWord2 x = 
            | x `mod` 15 == 0 = "FizzBuzz"
            | x `mod` 5 == 0 = "Buzz"
            | x `mod` 3 == 0 = "Fizz"
            | otherwise = show x


-}


-- right triangles
triangles range = [ (a, b, c) | c <- range, b <- range, a <- range, a^2 + b^2 == c^2, a <= b, b <= c ]
