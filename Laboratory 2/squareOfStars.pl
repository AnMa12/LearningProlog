square :- square(5, '* ').
% N - number, S -symbol
square(N, S) :- count(0,N,S), square(N,S).
% I - start, F - stop, S - symbol
count(I,F,S) :- I =< F, write(S), I2 is I+1, count(I2,F,S).
count(I,F,S) :- I > F, nl.