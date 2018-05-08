
% scalar product between two list of integers

dot([],[],0).

dot([Head1 | Tail1], [Head2 | Tail2], R) :-
    
	%R2 is R + Head1*Head2,     
    
	dot(Tail1, Tail2, R2),
    
	R is R2+Head1*Head2.
