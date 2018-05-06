
/*find nth fibonacci term*/

/*
fib(0, 1) :- !.
fib(1, 1) :- !.
fib(N, Result) :- N1 is N - 1, N2 is N - 2, fib(N1, Result1), fib(N2, Result2), Result is Result1 + Result2.
*/

fib( 0, 1 ).
fib( 1, 1 ).
fib( Nr, X ) :- fibAlg( Nr, 0, 1, X ).

fibAlg( 0, A, _, A ).
fibAlg( Nr, A, B, X ) :- Nr > 0, 
    				   	NewB is A + B,
    					N is Nr - 1,
                       	fibAlg( N, B, NewB, X ).