%verify if two lists have the same number of elemnts, and the first cotains just a, and the second just b

trans_a_b([],[]).

trans_a_b([Heada|Taila],[Headb|Tailb]) :- Heada == a, Headb == b, trans_a_b(Taila,Tailb).

/*
or better
trans_a_b([],[]).

trans_a_b([a|Taila],[b|Tailb]) :- trans_a_b(Taila,Tailb).
*/
