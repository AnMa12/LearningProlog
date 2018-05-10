/* 
^In acest exercitiu vom reprezenta numerele sub urmatoarea forma:
0 : []
1 : [x]
2 : [x,x]
3 : [x,x,x]
4 : [x,x,x,x]
: : :
a) Deniti un predicat successor/2 care ^ntoarce ^n al doilea argument
succesorul numarului dat ca prim argument.
Exemplu:
?- successor([x,x,x],Result).
Result = [x,x,x,x]
*/

successor([],[x]).
successor([H|T1],[H|T2]) :- successor(T1,T2).

successor(X,[x|X]).