%simulating a data base in prolog
born(jan, date(20,3,1977)).
born(jeroen, date(2,2,1992)).
born(joris, date(17,3,1995)).
born(jelle, date(1,1,2004)).
born(joan, date(24,12,0)).
born(joop, date(30,4,1989)).
born(jannecke, date(17,3,1993)).
born(jaap, date(16,11,1995)).

%Scrieti un predicat year/2 care gaseste toate persoanele nascute ntr-un anumit an.
year(Year, Person) :- born(Person, date(_,_,Year)).

%Scrieti un predicat before/2 care primeste doua date calendaristice si
%care este adevarat daca prima expresie reprezinta o data calendaristica
%^naintea datei reprezentate de a doua expresie
before(date(D1,M1,Y1), date(D2,M2,Y2)) :- Y1 < Y2;
 					  M1 < M2, Y1 == Y2;
                                          D1 < D2, M1 == M2, Y1 == Y2.

%Scrieti un predicat older/2 care este adevarat daca persoana data ca
%prim argument este mai ^n v^arsta (strict) dec^at persoana data ca al doilea
%argument.
older(Person, X) :- born(Person, D1), born(X, D2),
    		    before(D1,D2).