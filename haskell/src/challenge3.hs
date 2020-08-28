import Data.Function


-- Calculate the norm of a list of numbers
norma lst =
    sqrt (sum (map (\x -> x*x) lst))


-- Transform two lists of equal size in one list of ordered pairs
myRecursiveLambda = fix(\f (l1,l2) -> if length l1 == 0 then [] else (head l1, head l2):f((tail l1), (tail l2)))


-- Calculate the dot product of two lists
prod_int lst1 lst2 =
    sum (map (\(a,b) -> a*b) (myRecursiveLambda (lst1, lst2)))


-- Calculate the cosine similitary of two lists
sim v1 v2 =
    (prod_int v1 v2)/((norma v1)*(norma v2))


-- Implements quicksort
quicksort lst =
    if lst == []
        then []
        else (quicksort before) ++ [head lst] ++ (quicksort after) where
            before = filter (\x -> x <   (head lst)) (tail lst)
            after  = filter (\x ->  x >= (head lst)) (tail lst)


-- Count occurrences of a string in a list of strings
countOccurrences word text =  
    if text == [] then 0
    else if (head text) == word then 1 + (countOccurrences word (tail text))
    else (countOccurrences word (tail text))


-- Remove all repeated elements in a list
removeRepetitions text = 
    if text == [] then []
    else [(head text)] ++ (removeRepetitions (filter (/=(head text)) text))


-- Create an absolute frequency list of a list of strings based on a dictionary
createAbsoluteFrequencyList text dict =
    if dict == [] then []  
    else [(head dict, fromIntegral (countOccurrences (head dict) text))] ++ (createAbsoluteFrequencyList
 text (tail dict))  


-- Calcute the relative frequency given an absolute frequency list
calculateWeights freqs text = map (\(x,y) -> (x, y/(fromIntegral (length text)))) freqs


-- Given a list of (word, absolute frequencie) , returns a vector with relative frequencies
vectorRepresentation freqs text  = map (\(x,y) -> y) (calculateWeights freqs text)


-- Given two lists of words and a dictionary, calculates the similarity of the two words
calculateSimilarity s1 s2 dict = 
    sim (vectorRepresentation  (createAbsoluteFrequencyList s1 dict) s1) 
                 (vectorRepresentation  (createAbsoluteFrequencyList s2 dict) s2)


-- Creates a list of distinct words that are in s1 or s2
createDict s1 s2 = 
    quicksort (removeRepetitions ( (words s1) ++ (words s2) ))


challenge3 s1 s2 =
    if s1 == "" && s2 == ""
        then 1
        else if s1 == "" || s2 == ""
            then 0
            else
                calculateSimilarity (words s1) (words s2) (createDict s1 s2)
