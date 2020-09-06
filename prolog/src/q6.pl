imprimeLista([]).
imprimeLista([H|T]) :- write(H), nl, imprimeLista(T).