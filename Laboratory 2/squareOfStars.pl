
/*
?- square(5, '* ').
* * * * *
* * * * *
* * * * *
* * * * *
* * * * * 
*/

%obs: to avoid singletone unused variable use _
%because we need an index which will decrease
%and an N which il not change, we will use 3 parameters

square(N,C) :- do_lines(N,N,C) .
%Write N lines
do_lines(M,N,C) :- M > 0 , do_line(N,C), M1 is M-1, do_lines(M1,N,C). 
%Write a single line, consisting of N characters followed by a newline character.
do_line(N, C) :- N > 0, write(C), N1 is N-1 , do_line(N1,C) ; N = 0, nl.


