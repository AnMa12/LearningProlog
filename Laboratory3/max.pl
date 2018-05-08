% finds the max valuea in a list

max([M],M). % we put the same variable because M is initialized with the first element of the list
            % or we can use max([],0).
max([H|T],M) :- max(T,M2), H > M2, M is H;
    			max(T,M2), H < M2, M is M2.
