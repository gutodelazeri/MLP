mdc(A,0,A) :- A \= 0.
mdc(0,A,A) :- A \= 0.
mdc(A,B,C) :- A \= 0, B \= 0, B >= A, D is mod(B,A), mdc(A, D, C).
mdc(A,B,C) :- A \= 0, B \= 0, B < A, D is mod(A,B), mdc(B, D, C).