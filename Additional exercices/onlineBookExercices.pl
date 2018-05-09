%Exercise  4.3 Write a predicate second(X,List) 
%which checks whether X is the second element of List .
second(X,List) :- secondTest(X,List,2).
secondTest(X,[Head|_],Nr) :- Nr == 1, Head == X.
secondTest(X,[_|Tail],Nr) :- Nr > 1, Nr2 is Nr-1, secondTest(X,Tail,Nr2).

%Exercise  4.4 Write a predicate swap12(List1,List2) which checks whether 
%List1 is identical to List2 , except that the first two elements are exchanged.
swap(List1, List2) :- swapList(List1, List2, 2).
swapList([H1, H2|T1], [H2, H1|T2], Nr) :- Nr > 0, Nr2 is Nr-2, swapList(T1, T2, Nr2).
swapList([H|T1], [H|T2], Nr) :- Nr == 0, swapList(T1, T2, Nr).
swapList([], [], _).

%Exercise  4.5 Suppose we are given a knowledge base with the following facts:
   tran(eins,one). 
   tran(zwei,two). 
   tran(drei,three). 
   tran(vier,four). 
   tran(fuenf,five). 
   tran(sechs,six). 
   tran(sieben,seven). 
   tran(acht,eight). 
   tran(neun,nine).
%Write a predicate listtran(G,E) which translates a list of German number words to the 
%corresponding list of English number words. For example:
%listtran([eins,neun,zwei],X). should give: X  =  [one,nine,two].
%listtran(X,[one,seven,six,two]). it should return: X  =  [eins,sieben,sechs,zwei].
listtran(G,E) :- tranAlg(G,E).
tranAlg([HG|TG],[HE|TE]) :- tran(HG,HE), tranAlg(TG,TE).
tranAlg([],[]).

%Exercise  4.6 Write a predicate twice(In,Out) whose left argument is a list,
%and whose right argument is a list consisting of every element in the left 
%list written twice. For example, 
%the query twice([a,4,buggle],X). should return X  =  [a,a,4,4,buggle,buggle]).
%And the query twice([1,2,1,1],X). should return X  =  [1,1,2,2,1,1,1,1].
twice(In,Out) :- twiceAlg(In,Out).
twiceAlg([HI|TI],[HI, HI|TO]) :- twiceAlg(TI, TO).
twiceAlg([],[]).

%1. Write a 3-place predicate combine1 which takes three lists as arguments 
%and combines the elements of the first two lists into the third as follows:
%?-  combine1([a,b,c],[1,2,3],X). X  =  [a,1,b,2,c,3] 
%?-  combine1([f,b,yip,yup],[glu,gla,gli,glo],Result). Result  =  [f,glu,b,gla,yip,gli,yup,glo]
combine1([H1|T1],[H2|T2],[H1,H2|T3]) :- combine1(T1,T2,T3).
combine1([],[],[]).

%2. Now write a 3-place predicate combine2 which takes three lists as arguments 
%and combines the elements of the first two lists into the third as follows:
%?-  combine2([a,b,c],[1,2,3],X). X  =  [[a,1],[b,2],[c,3]] 
%?-  combine2([f,b,yip,yup],[glu,gla,gli,glo],Result). Result  =  [[f,glu],[b,gla],[yip,gli],[yup,glo]]
combine2([H1|T1],[H2|T2],[H3|T3]) :- H3 = [H1,H2], combine2(T1,T2,T3).
combine2([],[],[]). %!!!merge doar pe primele elemente

%3. Finally, write a 3-place predicate combine3 which takes three lists as arguments 
%and combines the elements of the first two lists into the third as follows:
%?-  combine3([a,b,c],[1,2,3],X). X  =  [j(a,1),j(b,2),j(c,3)] 
%?-  combine3([f,b,yip,yup],[glu,gla,gli,glo],R). R  =  [j(f,glu),j(b,gla),j(yip,gli),j(yup,glo)]
combine3([H1|T1],[H2|T2],[H3|T3]) :- H3 = j(H1,H2), combine3(T1,T2,T3).
combine3([],[],[]). %!!!merge doar pe primele elemente