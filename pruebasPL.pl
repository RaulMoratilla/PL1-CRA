primeros(L, [], L, 0).
primeros([X | R], [X], R, 1).
primeros([X | R], [X | R1], R2, N) :- N1 is N-1, primeros(R, R1, R2, N1).

get(L, INDICE, X) :- INDICE2 is INDICE-1, primeros(L, _, [X | _], INDICE2).
