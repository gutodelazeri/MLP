import Data.Function

myRecursiveLambda = fix(\f (l1,l2) -> if length l1 == 0 then [] else (head l1, head l2):f((tail l1), (tail l2)))

prod_int lst1 lst2 =
    sum (map (\(a,b) -> a*b) (myRecursiveLambda (lst1, lst2)))