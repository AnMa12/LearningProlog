
element_at([H|_], Nr, X) :- Nr = 1,
    	         	    X = H.
element_at([_|T], Nr, X) :- Nr > 1, 
    		            Nr2 is Nr-1,	
    		            element_at(T, Nr2, X).