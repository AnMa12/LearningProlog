%test if a list is palindrome

palindrome(X) :- rev(X,X).
rev([],[]).
rev([Elem],[Elem]).
rev([H|T],R) :- rev(T,X),
    		    append(X,[H],R).