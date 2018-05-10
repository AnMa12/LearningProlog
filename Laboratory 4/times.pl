/* 
^In acest exercitiu vom reprezenta numerele sub urmatoarea forma:
0 : []
1 : [x]
2 : [x,x]
3 : [x,x,x]
4 : [x,x,x,x]
: : :
c) Deniti un predicat times/3 care ^nmulteste doua numere.
Exemplu:
?- times([x, x], [x, x, x, x], Result).
Result = [x, x, x, x, x, x, x, x]
*/

times([x],L,R):-append([],L,R).
times([x|T1],L,R2) :- times(T1,L,R), append(R,L,R2).
