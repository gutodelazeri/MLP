% Item 1
genitor('jose', 'joao')

% Item 2
genitor('jose', X), genero(X, 'homem')

% Item 3
findall(X, genitor(_,X), L) \= []

% Item 4
tio('jose', T)

% Item 5
gosta('joao', 'leitura')

% Item 6
gosta(X, 'boliche').

% Item 7
gosta('joao', X), gosta('maria', X)