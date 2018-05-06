fib(Nr, X) :- fibAlg(Nr, 1, 1, X).
fibAlg(Nr, A, B, X) :- Nr > 0, 
    				   X1 is A+B, 
                       A1 is B-0, 
                       B1 is X-0, 
                       Nr1 is Nr-1, 
                       fibAlg(Nr1, A1, B1, X1). 


fib(Nr, X) :- fibAlg(Nr, 1, 1, X).
fibAlg(Nr, A, B, X) :- Nr > 1, 
    				   A is A+B,
                       fibAlg(Nr-1, B, X, A). 
