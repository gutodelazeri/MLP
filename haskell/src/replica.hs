replica e n 
    | (n == 0)    = []
    | otherwise = e:replica e (n-1)