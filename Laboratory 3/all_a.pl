/* all_a( [ ] ) :- !.
all_a( [ Head | Tail ] ) :- Head == a,
    			    all_a( Tail ).*/

% verify if a list cotains just a
all_a([]).
all_a([a|T]) :- all_a(T).
