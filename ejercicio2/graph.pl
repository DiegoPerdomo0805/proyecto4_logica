/*-asignaciones-*/
arista(a, b).
arista(a, c).
arista(a, d).
arista(c, d).


/*-Reglas-*/
conexo(X, Y):- arista(X, Y).
camino(X, Z, Y):- conexo(X, Y), conexo(Y, Z). 
