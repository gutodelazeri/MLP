% Item 1
aconselha('Spock', 'Kirk').
aconselha('Diana', 'Picard').
comanda('Archer', 'NX-01').
comanda('Kirk', 'NCC-1701').
comanda('Picard', 'NCC-1701-D').
comanda('Janeway', 'Voyager').
comanda('Almak', 'IRW TMet').
ehum('NX-01', 'Enterprise').
ehum('NCC-1701', 'Enterprise').
ehum('NCC-1701-D', 'Enterprise').
ehum('Voyager', 'Enterprise').
ehum('IRW TMet', 'D-deridex').
ehum('Enterprise', 'Nave').
ehum('D-deridex', 'Nave').
pertence('D-deridex', 'Império Romulano').
pertence('Enterprise', 'Federacao').
locomocao('Enterprise', 'Motor de dobra').

% Item 2
comandante(X, Y) :- comanda(X, Z), pertence(E, Y), ehum(Z, E).

% Item 3
inimigos(X, Y) :- comandante(X, F), comandante(Y, G), F \= G.

% Item 4
inimigos_lst(X, L) :- findall(G, inimigos(X, G), K), L = K.

% Item 5
comandantes(X, L) :- findall(G, comandante(G, X), K), L = K.

% Item 6
posse(A, B) :- ehum(A, C), pertence(C, B).

contanaves() :- write('Deseja contar as naves de qual facção?'), read(X), 
    			findall(N, posse(N, X), L), length(L, A),
    			write(X), write(': '), write(A), write(' nave(s)').