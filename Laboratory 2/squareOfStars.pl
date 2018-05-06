
% trying with local variable
square :- square(5, '* ').
% N - number, S -symbol
square(N, S) :- Indice is N.
square(N, S) :- Indice > 0 count(0,N,S), Indice is Indice-1, square(N,S).
square(N, S) :- Indice =< 0, Indice is N.
count(I,F,S) :- I =< F, write(S), I2 is I+1, count(I2,F,S).
count(I,F,S) :- I > F, nl.