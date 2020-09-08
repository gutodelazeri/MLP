% Item 1
tiosLst(X, L) :- setof(T, tios(X, T), K), L=K.

% Item 2
avosLst(X, L) :- setof(T, (avos(X, T); avohs(X, T)), K), L=K.

% Item 3
antepassados(X, L) :- setof(P, (pai(X, P); mae(X, P); avos(X, P); avohs(X, P)), K), L=K.

% Item 4
numerodeantepassados(X, N) :- setof(P, (pai(X, P); mae(X, P); avohs(X, P); avos(X, P)), K),
                             length(K, M), N is M.