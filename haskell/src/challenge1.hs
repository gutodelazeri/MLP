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
    else [(head dict, fromIntegral (countOccurrences (head dict) text))] ++ (createAbsoluteFrequencyList text (tail dict))


challenge1 text = 
    if text == []
        then []
        else createAbsoluteFrequencyList text (removeRepetitions text)


