fib(0, 0).
fib(1, 0).
fib(2, 1).
fib(N, A) :- N > 2, P is N-1, Q is N-2, fib(P, B1), fib(Q,B2), A is B1 + B2.

nfibs(0, []).
nfibs(N, L) :- N > 0, M is N - 1, nfibs(M, P), fib(N, Q), L = [P, Q].