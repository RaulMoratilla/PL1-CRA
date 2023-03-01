/*Sudoku*/

numeros([1,2,3,4,5,6,7,8,9]).

bloque([1,2,3,10,11,12,19,20,21]).
bloque([4,5,6,13,14,15,22,23,24]).
bloque([7,8,9,16,17,18,25,26,27]).
bloque([28,29,30,37,38,39,46,47,48]).
bloque([31,32,33,40,41,42,49,50,51]).
bloque([34,35,36,43,44,45,52,53,54]).
bloque([55,56,57,64,65,66,73,74,75]).
bloque([58,59,60,67,68,69,76,77,78]).
bloque([61,62,63,70,71,72,79,80,81]).

fila([1,2,3,4,5,6,7,8,9]).
fila([10,11,12,13,14,15,16,17,18]).
fila([19,20,21,22,23,24,25,26,27]).
fila([28,29,30,31,32,33,34,35,36]).
fila([37,38,39,40,41,42,43,44,45]).
fila([46,47,48,49,50,51,52,53,54]).
fila([55,56,57,58,59,60,61,62,63]).
fila([64,65,66,67,68,69,70,71,72]).
fila([73,74,75,76,77,78,79,80,81]).

columna([1,10,19,28,37,46,55,64,73]).
columna([2,11,20,29,38,47,56,65,74]).
columna([3,12,21,30,39,48,57,66,75]).
columna([4,13,22,31,40,49,58,67,76]).
columna([5,14,23,32,41,50,59,68,77]).
columna([6,15,24,33,42,51,60,69,78]).
columna([7,16,25,34,43,52,61,70,79]).
columna([8,17,26,35,44,53,62,71,80]).
columna([9,18,27,36,45,54,63,72,81]).

sudoku_prueba1(["." , "." , "3" ,   "." , "2" , "." ,   "7" , "." , "." ,
                "5" , "." , "." ,   "." , "." , "." ,   "4" , "." , "3" ,
                "." , "." , "." ,   "3" , "." , "." ,   "." , "2" , "5" ,

                "." , "." , "5" ,   "." , "1" , "." ,   "6" , "." , "." ,
                "." , "." , "4" ,   "8" , "." , "7" ,   "." , "." , "." ,
                "2" , "3" , "7" ,   "6" , "." , "4" ,   "8" , "." , "." ,

                "." , "8" , "." ,   "." , "." , "2" ,   "." , "7" , "." , 
                "3" , "." , "." ,   "4" , "." , "." ,   "2" , "." , "8" ,
                "." , "." , "9" ,   "." , "." , "." ,   "." , "6" , "."]).

sudoku(L) :- sudoku_prueba1(L).

/* 
    Devuelve (en dos listas) los N primeros elementos de una lista y el resto
    Primera posicion: Lista original
    Segunda posicion: Lista con los N primeros elementos
    Tercera posicion: Lista con el resto de elementos
    Cuarta posicion: Numero de elementos a devolver
*/
primeros(L, [], L, 0).
primeros([X | R], [X], R, 1).
primeros([X | R], [X | R1], R2, N) :- N1 is N-1, primeros(R, R1, R2, N1).

imprimir_fila([]) :- write("|"), nl.
imprimir_fila([X | R]) :- write("|"), write(X), imprimir_fila(R).

imprimir_tablero([]) :- write("-------------------"), nl, nl, nl.
imprimir_tablero(L) :- write("-------------------"), nl, primeros(L, L1, L2, 9), imprimir_fila(L1), imprimir_tablero(L2).

contenidoB(INDICE, B) :- bloque(B), member(INDICE, B).
contenidoF(INDICE, F) :- fila(F), member(INDICE, F).
contenidoC(INDICE, C) :- columna(C), member(INDICE, C).

get(L, INDICE, X) :- INDICE2 is INDICE-1, primeros(L, _, [X | _], INDICE2).

remove(_, ".").
remove(L, X, R) :- remove(L, X, [], R).

/*
    Primera posición: Sudoku inicial
    Segunda posición: Indices de los elementos del bloque
    Tercera posición: Lista con todos los numeros
    Cuarta posición: Lista con los numeros que pueden ir en la posicion
*/
posibles_bloque(LP, [], NTOTALES, NTOTALES) :- numeros(NTOTALES), sudoku(LP).
posibles_bloque(LP, [X | R], NTOTALES, POSIBLES) :- numeros(NTOTALES),
                                                    posibles_bloque(LP, R, NTOTALES, POSIBLESAUX), 
                                                    get(LP, X, NUM), 
                                                    remove(POSIBLESAUX, NUM, POSIBLES).

get_posibles(LA, LP, INDICE, NPOSIBLES, NTOTALES) :- numeros(NTOTALES),
                                                     contenidoB(INDICE, B),
                                                     posibles_bloque(LP, B, NTOTALES, NPOSIBLES).
                                                     /*contenidoF(INDICE, F),
                                                     posibles_fila(F, NTOTALES, PF), 
                                                     contenidoC(INDICE, C),
                                                     posibles_columna(C, NTOTALES, PC), 
                                                     conj(PB, PF, NPOSIBLES1), 
                                                     conj(NPOSIBLES1, PC, NPOSIBLES).*/

poner_posibles([], LA, _).
poner_posibles(["." | R], LA, N) :- get_posibles(LA, LP, N, NPOSIBLES, _), append(LA, LP, LB), poner_posibles(R, LB, N1), N1 is N+1.
poner_posibles([X | R], LA, N) :- N1 is N+1, append(LA, [X], LB), poner_posibles(R, LB, N1).

simplificar_sudoku(L, _) :- imprimir_tablero(L), poner_posibles(L, LA, 1), imprimir_tablero(LA).
