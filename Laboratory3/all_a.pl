all_a( [ ] ) :- !.

all_a( [ Head | Tail ] ) :- Head == a,
    			    all_a( Tail ).