%multiply each element of the list with the scalar

scalarMult(_,[],[]).
scalarMult(Scl,[Hl| Tl],[Hr| Tr]) :- 
    Hr is Scl*Hl,
    scalarMult(Scl, Tl, Tr).