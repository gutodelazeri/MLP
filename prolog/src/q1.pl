% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %% fatos
pessoa('joao').
pessoa('maria').
pessoa('leonardo').
pessoa('daniele').
pessoa('ana').
pessoa('jose').
pessoa('marcio').
pessoa('carla').
pessoa('fernando').
pessoa('marcelo').

genero('joao', 'homem').
genero('maria', 'mulher').
genero('leonardo', 'homem').
genero('daniele', 'mulher').
genero('ana', 'mulher').
genero('jose', 'homem').
genero('marcio', 'homem').
genero('carla', 'mulher').
genero('fernando', 'homem').
genero('marcelo', 'homem').

genitor('ana', 'joao').
genitor('ana', 'maria').
genitor('jose', 'joao').
genitor('jose', 'maria').
genitor('marcio', 'joao').
genitor('marcio', 'maria').
genitor('carla', 'leonardo').
genitor('carla', 'daniele').
genitor('fernando', 'leonardo').
genitor('fernando', 'daniele').
genitor('marcelo', 'marcio').
genitor('marcelo', 'carla').

gosta('joao', 'vinho').
gosta('maria', 'livros').
gosta('jose', 'filmes').
gosta('ana', 'rafael').
gosta('ana', 'leitura').
gosta('joao', 'leitura').
gosta('maria', 'cinema').
gosta('jose', 'cinema').
gosta('marcelo', 'cinema').
gosta('marcelo', 'vanessa').
gosta('vanessa', 'marcelo').
gosta('jose', 'jaqueline').
gosta('leonardo', 'vinho').
gosta('jose', 'boliche').

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %% regras
mae(F,M):-pessoa(F), pessoa(M),
genitor(F,M), genero(M,'mulher').
pai(F,P):-pessoa(F), pessoa(P),
genitor(F,P), genero(P,'homem').
pais(F, P, M):-pessoa(F), pessoa(P), pessoa(M),
pai(F, P), mae(F, M). % se é genitor (pai ou mae)
irmaos(X,Y):-genitor(X,G), genitor(Y, G), X\=Y. % se é irmão ou irmã
irmao(X,Y):-irmaos(X,Y), genero(Y,'homem').
irma(X,Y):-irmaos(X,Y), genero(Y,'mulher').
avom(X,Y):-pai(X,Z), pai(Z,Y).
avof(X,Y):-mae(X,Z), pai(Z,Y).
avos(X,Y):-avom(X,Y) ; avof(X, Y). % se é avo ou avó
tio(X, T):-pais(X, P, M), (irmao(P, T); irmao(M, T)).
tia(X, T):-pais(X, P, M), (irma(P, T); irma(M, T)).
tios(X,T):-tio(X,T);tia(X,T). % se é tio ou tia
filho(X,Y):-(pai(Y,X);mae(Y,X)),genero(Y, 'homem').
filha(X,Y):-(pai(Y,X);mae(Y,X)),genero(Y, 'mulher').
filhos(X,Y):-filho(X,Y);filha(X,Y). % se é filho ou filha

% repare a seguinte cláusula. As expressões separadas por OR (;)
% poderiam estar em cláusulas separadas (o efeito é o mesmo)!
primos(X,Y):-(pai(X,P), irmaos(P,T), filhos(T,Y)) ;
(mae(X,M), irmaos(M,T), filhos(T,Y)).

% mesmo que acima
%primos(X,Y):-(pai(X,P), irmaos(P,T), filhos(T,Y)).
%primos(X,Y):-(mae(X,M), irmaos(M,T), filhos(T,Y)).

primo(X,Y):-primos(X,Y), genero(Y, 'homem').
primo(X,Y):-primos(X,Y), genero(Y, 'mulher').