tamanhoLst([], 0).
tamanhoLst([_|T], L) :- tamanhoLst(T, K), L is K + 1.