tamanhoLst([], 0).
tamanhoLst([H|T], L) :- tamanhoLst(T, K), L is K + 1.