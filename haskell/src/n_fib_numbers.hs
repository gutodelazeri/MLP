n_fib_numbers n = take n f_numbers where f_numbers =  0:1:(map (\(x,y) -> x + y) (zip f_numbers (tail f_numbers)))