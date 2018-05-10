/* 
^In acest exercitiu vom reprezenta numerele sub urmatoarea forma:
0 : []
1 : [x]
2 : [x,x]
3 : [x,x,x]
4 : [x,x,x,x]
: : :
b) Deniti un predicat plus/3 care aduna doua numere.
Exemplu:
?- plus([x, x], [x, x, x, x], Result).
Result = [x, x, x, x, x, x]
*/

plus1(X,Y,Result) :- X = 1, append(X,Y,Result).
plus1([H|T],Y,Result) :- H > 1, plus([H|T],Y,Result), append([H|T],Y,Result).