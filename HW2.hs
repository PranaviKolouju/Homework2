module HW2 where

-- Assignment: Homework 2
-- By: Pranavi Kolouju

-- Question 1

nextToLast :: [a] -> a
nextToLast [] = error "List is too short"
nextToLast [x] = error "List is too short"
nextToLast (x:xs) = reverse xs !! 1

-- Question 2

multiplyAndReverse :: (Num a) => a -> [a] -> [a] 
multiplyAndReverse x xs = reverse (map (*x) xs)

-- Question 3

duplicates :: Eq a => [a] -> Bool
duplicates [] = False
duplicates [x] = False
duplicates (x:xs) = if x `elem` xs then duplicates xs


-- Question 4

commaSeparate :: [String] -> String
commaSeparate [] = ""
commaSeparate [x] = x
commaSeparate (x:xs) = x ++ ", " ++ commaSeparate xs


-- Question 5
deleteAll :: (Eq a) => a -> ([a] -> [a])
deleteAll r [] = []
deleteAll r (x:xs) = if r == x then deleteAll r xs else (x : deleteAll  r xs)

-- Question 6
makePalindrome :: [a] -> [a]
makePalindrome [] = []
makePalindrome xs = xs ++ reverse xs
