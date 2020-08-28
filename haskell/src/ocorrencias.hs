ocorrencias n lst = 
    if lst == []
        then 0
        else if head lst == n
            then 1 + ocorrencias n (tail lst)
            else
                ocorrencias n (tail lst)