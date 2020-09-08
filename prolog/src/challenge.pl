pessoa(p1).
pessoa(p2).
pessoa(p3).
pessoa(p4).
pessoa(p5).
pessoa(p6).

gosta(p1, c1).
gosta(p2, c2).
gosta(p3, c3).
gosta(p4, c4).

% Como gerar uma lista de variáveis? https://stackoverflow.com/a/6225198/6368670
% Acredito que o predicado apply esteja deprecado, mas não consegui encontrar um outro que receba uma lista de parâmetros
countClauses(C, N, L) :- length(A, L), not(apply(C,A)), N is 0, !.
countClauses(C, N, L) :- length(A, L),
                         apply(C,A), 
                         X =.. [C|A], 
                         retract(X), 
                         countClauses(C, M, L), 
                         assert(X), 
                         N is M + 1, !.

% Uso current_predicate para descobrir a aridade do predicado.
howManyClauses(C, N) :- current_predicate(C/L), dynamic(C/L), countClauses(C, M, L), N is M, !.


%howManyClauses(clau, N).
%  N = 6.

%howManyClauses(pessoa, N).
%  N = 6.

%howManyClauses(gosta, N).
%  N = 4.

%howManyClauses(predicadoNaoDeclarado, N).
%  false.

