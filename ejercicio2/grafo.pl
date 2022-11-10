/*-asignaciones-*/
arista(a, b).
arista(a, c).
arista(a, d).
arista(c, d).


/*-Reglas-*/

% Repetidos
sin_repetidos(_, []).
sin_repetidos(L, [P|Ps]):- L \== P, sin_repetidos(L, Ps).

% Camino
camino(Inicio, Final, [Inicio|Ps]):- camino(Inicio, Final, [Inicio], Ps).
camino(Final, Final, _, []).
camino(Inicio, Final, Anteriores, [P|Ps]):-
  arista(Inicio, P),
  sin_repetidos(P, Anteriores),
  camino(P, Final, [P|Anteriores], Ps)
.