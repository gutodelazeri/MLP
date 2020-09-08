% Item 1
genitor('jose', 'joao') % true

% Item 2
genitor('jose', X), genero(X, 'homem') % joao

% Item 3
findall(X, genitor(_,X), L) \= [] % true

% Item 4
tio('jose', T) % false

% Item 5
gosta('joao', 'leitura') % true

% Item 6
gosta(X, 'boliche'). % jose

% Item 7
gosta('joao', X), gosta('maria', X) % false