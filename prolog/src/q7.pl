ultimoLst([E], R) :- R is E.
ultimoLst([_|T], R) :- ultimoLst(T, R).