
/*Sase cuvinte din engleza
abalone, abandon, anagram, connect, elegant, enhance
trebuie aranjate ^ntr-un puzzle de cuvinte ^ncrucisate ca ^n gura.
Aici gasiti o baza de cunostinte ce reprezinta un lexicon ce contine
aceste cuvinte.
Deniti un predicat crosswd/6 care calculeaza toate variantele ^n care
puteti completa grila. Primele trei argumente trebuie sa e cuvintele pe
verticala, de la st^anga la dreapta, (V1,V2,V3), iar urmatoarele trei
argumente trebuie sa e cuvintele pe orizontala, de sus ^n jos (H1,H2,H3).
Hint: Specicati ca V1, V2, V3, H1, H2, H3 sunt cuvinte care au
anumite litere comune. Unde este cazul, folositi variabile anonime.*/

% Crossword puzzle
word(abalone,a,b,a,l,o,n,e).
word(abandon,a,b,a,n,d,o,n).
word(enhance,e,n,h,a,n,c,e).
word(anagram,a,n,a,g,r,a,m).
word(connect,c,o,n,n,e,c,t).
word(elegant,e,l,e,g,a,n,t).

H1(_, X1, _, X2, _, X3, _).
H2(_, Y1, _, Y2, _, Y3, _).
H3(_, Z1, _, Z2, _, Z3, _).
V1(_, X1, _, Y1, _, Z1, _).
V2(_, X2, _, Y2, _, Z2, _).
V3(_, X3, _, Y3, _, Z3, _).

crossword(V1, V2, V3, H1, H2, H3).