/* 
    Devuelve los N primeros elementos de una lista, y el resto
    Primera posicion: Lista original
    Segunda posicion: Lista con los N primeros elementos
    Tercera posicion: Lista con el resto de elementos
    Cuarta posicion: Numero de elementos a devolver
*/
primeros(L, [], L, N) :- N <= 0.
primeros([X | R], [X], R, N) :- N is 1.
primeros([X | R], [X | R1], R2, N) :- N1 is N-1, primeros(R, R1, R2, N1).

imprimir_fila([]) :- write("|"), nl.
imprimir_fila([X | R]) :- write("|"), write(X), imprimir_fila(R).

imprimir_tablero([]) :- write("-------------------"), nl, nl, nl.
imprimir_tablero(L) :- write("-------------------"), nl, primeros(L, L1, L2, 9), imprimir_fila(L1), imprimir_tablero(L2).

muestra1(["." , "." , "3" ,   "." , "2" , "." ,   "7" , "." , "." ,
          "5" , "." , "." ,   "." , "." , "." ,   "4" , "." , "3" ,
          "." , "." , "." ,   "3" , "." , "." ,   "." , "2" , "5" ,

          "." , "." , "5" ,   "." , "1" , "." ,   "6" , "." , "." ,
          "." , "." , "4" ,   "8" , "." , "7" ,   "." , "." , "." ,
          "2" , "3" , "7" ,   "6" , "." , "4" ,   "8" , "." , "." ,

          "." , "8" , "." ,   "." , "." , "2" ,   "." , "7" , "." , 
          "3" , "." , "." ,   "4" , "." , "." ,   "2" , "." , "8" ,
          "." , "." , "9" ,   "." , "." , "." ,   "." , "6" , "."]).

sudoku_prueba1(L) :- muestra1(L), imprimir_tablero(L).