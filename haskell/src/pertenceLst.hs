pertenceLst n lst =
    if lst == []
        then False
        else if head lst == n
            then True
                else
                    pertenceLst n (tail lst)