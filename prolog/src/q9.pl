pessoa(p1).
pessoa(p2).
pessoa(p3).
pessoa(p4).
pessoa(p5).
gosta(p1, futebol).
gosta(p1, volei).
gosta(p2, futebol).
gosta(p3, futebol).
gosta(p3, basquete).
gosta(p4, tenis).
gosta(p4, volei).

lstPessoasQueGostam(X, R) :- findall(G, gosta(G, X), L), R = L.