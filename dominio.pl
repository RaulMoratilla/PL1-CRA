/*Sudoku*/

/** Predicado que devuelve la lista con los numeros del 1 al 9 */
numeros(["1","2","3","4","5","6","7","8","9"]).

/** Predicado que devuelve la lista de casillas que pertenecen a un bloque */
bloque(1, [1,2,3,10,11,12,19,20,21]).
bloque(2, [4,5,6,13,14,15,22,23,24]).
bloque(3, [7,8,9,16,17,18,25,26,27]).
bloque(4, [28,29,30,37,38,39,46,47,48]).
bloque(5, [31,32,33,40,41,42,49,50,51]).
bloque(6, [34,35,36,43,44,45,52,53,54]).
bloque(7, [55,56,57,64,65,66,73,74,75]).
bloque(8, [58,59,60,67,68,69,76,77,78]).
bloque(9, [61,62,63,70,71,72,79,80,81]).

/** Predicado que devuelve la lista de casillas que pertenecen a una fila */
fila(1, [1,2,3,4,5,6,7,8,9]).
fila(2, [10,11,12,13,14,15,16,17,18]).
fila(3, [19,20,21,22,23,24,25,26,27]).
fila(4, [28,29,30,31,32,33,34,35,36]).
fila(5, [37,38,39,40,41,42,43,44,45]).
fila(6, [46,47,48,49,50,51,52,53,54]).
fila(7, [55,56,57,58,59,60,61,62,63]).
fila(8, [64,65,66,67,68,69,70,71,72]).
fila(9, [73,74,75,76,77,78,79,80,81]).

/** Predicado que devuelve la lista de casillas que pertenecen a una columna */
columna(1, [1,10,19,28,37,46,55,64,73]).
columna(2, [2,11,20,29,38,47,56,65,74]).
columna(3, [3,12,21,30,39,48,57,66,75]).
columna(4, [4,13,22,31,40,49,58,67,76]).
columna(5, [5,14,23,32,41,50,59,68,77]).
columna(6, [6,15,24,33,42,51,60,69,78]).
columna(7, [7,16,25,34,43,52,61,70,79]).
columna(8, [8,17,26,35,44,53,62,71,80]).
columna(9, [9,18,27,36,45,54,63,72,81]).

sudoku_prueba1(["." , "." , "3" ,   "." , "2" , "." ,   "7" , "." , "." ,
                "5" , "." , "." ,   "." , "." , "." ,   "4" , "." , "3" ,
                "." , "." , "." ,   "3" , "." , "." ,   "." , "2" , "5" ,

                "." , "." , "5" ,   "." , "1" , "." ,   "6" , "." , "." ,
                "." , "." , "4" ,   "8" , "." , "7" ,   "." , "." , "." ,
                "2" , "3" , "7" ,   "6" , "." , "4" ,   "8" , "." , "." ,

                "." , "8" , "." ,   "." , "." , "2" ,   "." , "7" , "." , 
                "3" , "." , "." ,   "4" , "." , "." ,   "2" , "." , "8" ,
                "." , "." , "9" ,   "." , "." , "." ,   "." , "6" , "."]).

sudoku_prueba2(["." , "8" , "." ,   "2" , "6" , "." ,   "3" , "." , "." ,
                "5" , "." , "." ,   "9" , "3" , "7" ,   "." , "8" , "." ,
                "." , "7" , "4" ,   "." , "." , "." ,   "." , "9" , "." ,

                "." , "9" , "7" ,   "3" , "." , "." ,   "2" , "6" , "." ,
                "." , "2" , "5" ,   "." , "8" , "." ,   "7" , "." , "3" ,
                "4" , "." , "." ,   "." , "." , "6" ,   "." , "1" , "." ,

                "." , "." , "3" ,   "4" , "7" , "." ,   "9" , "." , "6" ,
                "." , "4" , "." ,   "." , "." , "." ,   "." , "3" , "1" ,
                "2" , "." , "6" ,   "8" , "." , "." ,   "." , "." , "5"]).

sudoku_prueba3(["." , "." , "." ,   "7" , "." , "." ,   "." , "5" , "." ,
                "." , "6" , "." ,   "." , "." , "." ,   "3" , "." , "1" ,
                "8" , "." , "5" ,   "." , "." , "6" ,   "9" , "." , "." ,

                "." , "." , "8" ,   "." , "6" , "." ,   "." , "4" , "3" ,
                "." , "9" , "." ,   "." , "3" , "." ,   "8" , "2" , "." ,
                "." , "7" , "." ,   "." , "2" , "." ,   "." , "1" , "." ,

                "." , "." , "." ,   "5" , "." , "." ,   "1" , "." , "." ,
                "." , "5" , "7" ,   "." , "8" , "." ,   "." , "." , "2" ,
                "6" , "." , "1" ,   "." , "." , "3" ,   "." , "." , "8"]).

sudoku_prueba4(["." , "." , "." ,   "." , "6" , "." ,   "." , "." , "." ,
                "." , "." , "." ,   "9" , "5" , "." ,   "8" , "." , "3" ,
                "." , "." , "4" ,   "." , "." , "7" ,   "." , "." , "." ,

                "." , "6" , "." ,   "4" , "7" , "." ,   "." , "." , "." ,
                "." , "4" , "8" ,   "5" , "." , "." ,   "." , "." , "6" ,
                "." , "7" , "." ,   "8" , "9" , "." ,   "." , "." , "." ,

                "." , "3" , "." ,   "." , "." , "." ,   "2" , "." , "8" ,
                "6" , "." , "." ,   "." , "." , "." ,   "3" , "." , "4" ,
                "2" , "." , "." ,   "7" , "." , "." ,   "." , "9" , "."]).

sudoku_prueba5(["." , "1" , "." ,   "3" , "." , "6" ,   "8" , "." , "2" ,
                "7" , "." , "3" ,   "5" , "." , "." ,   "." , "." , "." ,
                "." , "." , "." ,   "." , "." , "." ,   "4" , "." , "." ,

                "9" , "5" , "." ,   "8" , "." , "." ,   "." , "4" , "1" ,
                "." , "." , "." ,   "." , "." , "." ,   "2" , "6" , "." ,
                "6" , "." , "1" ,   "." , "." , "." ,   "." , "9" , "5" ,

                "." , "." , "." ,   "6" , "2" , "." ,   "." , "." , "." ,
                "." , "." , "5" ,   "." , "7" , "." ,   "1" , "." , "." ,
                "." , "." , "4" ,   "." , "5" , "8" ,   "6" , "2" , "."]).

sudoku_prueba6(["." , "." , "4" ,   "2" , "." , "." ,   "." , "8" , "." ,
                "2" , "3" , "." ,   "4" , "." , "7" ,   "9" , "." , "6" ,
                "5" , "." , "." ,   "." , "3" , "." ,   "." , "2" , "." ,

                "3" , "." , "." ,   "." , "." , "." ,   "." , "." , "." ,
                "." , "7" , "5" ,   "." , "." , "." ,   "." , "." , "." ,
                "9" , "." , "." ,   "3" , "." , "." ,   "5" , "." , "." ,

                "." , "." , "." ,   "." , "." , "8" ,   "." , "3" , "4" ,
                "4" , "." , "." ,   "7" , "." , "." ,   "." , "." , "." ,
                "." , "." , "." ,   "1" , "5" , "." ,   "." , "6" , "2"]).

sudoku_prueba7(["." , "7" , "." ,   "2" , "5" , "." ,   "6" , "8" , "." ,
                "." , "3" , "." ,   "." , "." , "." ,   "2" , "7" , "." ,
                "." , "." , "." ,   "." , "." , "." ,   "." , "." , "." ,

                "." , "." , "6" ,   "." , "7" , "." ,   "." , "." , "." ,
                "." , "." , "4" ,   "." , "." , "2" ,   "7" , "." , "5" ,
                "5" , "." , "." ,   "4" , "6" , "." ,   "9" , "." , "." ,

                "." , "2" , "." ,   "." , "8" , "." ,   "5" , "." , "." ,
                "." , "." , "." ,   "6" , "." , "." ,   "." , "." , "." ,
                "." , "." , "." ,   "." , "." , "." ,   "3" , "4" , "8"]).

sudoku_prueba8(["." , "." , "." ,   "1" , "." , "." ,   "5" , "8" , "." ,
                "." , "." , "2" ,   "." , "9" , "." ,   "." , "." , "." ,
                "." , "7" , "1" ,   "6" , "." , "4" ,   "9" , "." , "." ,

                "." , "." , "." ,   "9" , "6" , "8" ,   "." , "4" , "." ,
                "8" , "." , "6" ,   "." , "." , "1" ,   "." , "9" , "5" ,
                "." , "." , "." ,   "." , "." , "." ,   "." , "." , "." ,

                "4" , "3" , "." ,   "." , "." , "2" ,   "." , "." , "." ,
                "." , "." , "." ,   "." , "3" , "." ,   "." , "." , "." ,
                "6" , "." , "5" ,   "." , "." , "." ,   "2" , "3" , "."]).

sudoku_prueba9(["." , "." , "8" ,   "." , "1" , "3" ,   "2" , "." , "." ,
                "." , "9" , "." ,   "5" , "." , "." ,   "." , "." , "." ,
                "." , "7" , "." ,   "." , "." , "." ,   "." , "." , "8" ,

                "." , "6" , "." ,   "1" , "." , "." ,   "3" , "." , "." ,
                "2" , "." , "." ,   "." , "." , "." ,   "." , "." , "9" ,
                "." , "." , "1" ,   "." , "." , "6" ,   "." , "7" , "." ,

                "6" , "." , "." ,   "." , "." , "." ,   "." , "5" , "." ,
                "." , "." , "." ,   "." , "." , "9" ,   "." , "3" , "." ,
                "." , "." , "3" ,   "2" , "7" , "." ,   "9" , "." , "."]).

sudoku_prueba10(["8" , "." , "." ,   "1" , "." , "." ,   "5" , "7" , "." ,
                 "2" , "." , "." ,   "." , "5" , "7" ,   "." , "." , "." ,
                 "1" , "." , "." ,   "9" , "." , "." ,   "." , "." , "." ,

                 "7" , "." , "." ,   "." , "." , "." ,   "." , "1" , "." ,
                 "." , "8" , "6" ,   "." , "." , "5" ,   "7" , "." , "." ,
                 "." , "." , "." ,   "8" , "." , "." ,   "." , "." , "." ,

                 "." , "." , "." ,   "." , "." , "3" ,   "." , "6" , "9" ,
                 "." , "2" , "." ,   "." , "9" , "." ,   "1" , "." , "5" ,
                 "." , "." , "." ,   "2" , "." , "." ,   "." , "3" , "."]).

sudoku_prueba11(["7" , "." , "." ,   "5" , "." , "9" ,   "." , "." , "." ,
                 "5" , "1" , "." ,   "." , "." , "." ,   "." , "3" , "." ,
                 "." , "." , "3" ,   "." , "." , "." ,   "8" , "." , "." ,

                 "." , "." , "." ,   "4" , "." , "8" ,   "9" , "." , "." ,
                 "4" , "." , "." ,   "." , "." , "6" ,   "." , "7" , "." ,
                 "." , "7" , "." ,   "9" , "." , "1" ,   "5" , "." , "." ,

                 "9" , "6" , "." ,   "." , "." , "." ,   "1" , "5" , "." ,
                 "8" , "5" , "." ,   "." , "." , "." ,   "." , "." , "4" ,
                 "." , "." , "." ,   "." , "." , "." ,   "." , "." , "."]).

sudoku_prueba12(["." , "." , "3" ,   "9" , "." , "1" ,   "." , "8" , "." ,
                 "7" , "." , "." ,   "4" , "3" , "." ,   "9" , "." , "." ,
                 "." , "." , "." ,   "." , "7" , "." ,   "5" , "3" , "." ,

                 "." , "." , "4" ,   "." , "." , "." ,   "." , "." , "." ,
                 "." , "1" , "7" ,   "." , "." , "4" ,   "." , "." , "." ,
                 "3" , "6" , "." ,   "." , "." , "." ,   "." , "." , "." ,

                 "." , "7" , "1" ,   "." , "4" , "." ,   "." , "9" , "." ,
                 "." , "." , "5" ,   "1" , "." , "." ,   "." , "6" , "." ,
                 "." , "4" , "." ,   "." , "." , "9" ,   "8" , "." , "."]).

sudoku_prueba13(["6" , "." , "." ,   "." , "3" , "." ,   "." , "." , "4" ,
                 "2" , "." , "4" ,   "." , "." , "." ,   "7" , "." , "." ,
                 "." , "." , "." ,   "." , "7" , "6" ,   "2" , "." , "." ,

                 "." , "3" , "5" ,   "." , "." , "." ,   "." , "." , "8" ,
                 "." , "." , "2" ,   "." , "6" , "1" ,   "." , "." , "." ,
                 "." , "." , "." ,   "." , "." , "4" ,   "5" , "." , "7" ,

                 "." , "." , "." ,   "2" , "9" , "." ,   "." , "6" , "." ,
                 "." , "." , "6" ,   "." , "." , "5" ,   "." , "." , "." ,
                 "9" , "7" , "." ,   "." , "." , "." ,   "4" , "." , "."]).

sudoku_prueba14(["." , "." , "2" ,   "4" , "." , "." ,   "." , "9" , "7" ,
                 "." , "." , "." ,   "." , "1" , "." ,   "." , "." , "." ,
                 "." , "3" , "." ,   "." , "." , "6" ,   "." , "2" , "." ,

                 "5" , "." , "3" ,   "." , "7" , "." ,   "." , "8" , "." ,
                 "." , "." , "." ,   "." , "." , "." ,   "." , "." , "." ,
                 "." , "6" , "." ,   "." , "4" , "." ,   "2" , "." , "3" ,

                 "." , "4" , "." ,   "6" , "." , "." ,   "." , "1" , "." ,
                 "." , "." , "." ,   "." , "9" , "." ,   "." , "." , "." ,
                 "2" , "1" , "." ,   "." , "." , "8" ,   "6" , "." , "."]).

sudoku_prueba15(["." , "." , "." ,   "7" , "." , "." ,   "." , "2" , "." ,
                 "." , "7" , "." ,   "." , "." , "5" ,   "9" , "." , "." ,
                 "." , "." , "4" ,   "." , "." , "1" ,   "." , "6" , "." ,

                 "." , "9" , "." ,   "." , "." , "7" ,   "." , "." , "2" ,
                 "3" , "." , "." ,   "." , "." , "." ,   "." , "." , "8" ,
                 "6" , "." , "." ,   "2" , "." , "." ,   "." , "7" , "." ,

                 "." , "4" , "." ,   "3" , "." , "." ,   "1" , "." , "." ,
                 "." , "." , "6" ,   "9" , "." , "." ,   "." , "8" , "." ,
                 "." , "1" , "." ,   "." , "." , "4" ,   "." , "." , "."]).

sudoku_prueba16(["." , "." , "." ,   "." , "." , "1" ,   "." , "2" , "." ,
                 "." , "." , "8" ,   "7" , "." , "3" ,   "5" , "." , "." ,
                 "9" , "." , "3" ,   "." , "." , "2" ,   "." , "." , "." ,

                 "2" , "." , "5" ,   "." , "." , "." ,   "." , "." , "6" ,
                 "." , "." , "." ,   "." , "7" , "." ,   "." , "." , "." ,
                 "6" , "." , "." ,   "." , "." , "." ,   "8" , "." , "1" ,

                 "." , "." , "." ,   "3" , "." , "." ,   "4" , "." , "9" ,
                 "." , "." , "2" ,   "9" , "." , "8" ,   "7" , "." , "." ,
                 "." , "4" , "." ,   "1" , "." , "." ,   "." , "." , "."]).

sudoku_prueba17(["." , "5" , "." ,   "." , "6" , "." ,   "." , "2" , "9" ,
                 "3" , "2" , "4" ,   "." , "." , "." ,   "." , "." , "7" ,
                 "9" , "." , "." ,   "." , "1" , "." ,   "." , "." , "." ,

                 "4" , "." , "1" ,   "." , "." , "." ,   "7" , "." , "." ,
                 "." , "." , "9" ,   "." , "." , "4" ,   "." , "." , "2" ,
                 "5" , "3" , "." ,   "." , "." , "9" ,   "4" , "." , "6" ,

                 "." , "." , "." ,   "." , "." , "." ,   "3" , "." , "." ,
                 "." , "." , "." ,   "7" , "9" , "." ,   "." , "." , "." ,
                 "." , "." , "." ,   "." , "5" , "." ,   "." , "." , "."]).

sudoku_prueba18(["." , "5" , "7" ,   "." , "." , "." ,   "." , "." , "9" ,
                 "4" , "." , "1" ,   "." , "." , "3" ,   "." , "." , "." ,
                 "." , "6" , "." ,   "." , "9" , "5" ,   "." , "." , "." ,

                 "." , "." , "." ,   "." , "." , "4" ,   "." , "5" , "." ,
                 "." , "." , "4" ,   "." , "." , "." ,   "3" , "." , "." ,
                 "." , "." , "3" ,   "1" , "." , "." ,   "." , "2" , "6" ,

                 "." , "." , "6" ,   "." , "." , "2" ,   "." , "7" , "3" ,
                 "2" , "." , "." ,   "." , "." , "." ,   "5" , "." , "." ,
                 "." , "3" , "." ,   "." , "." , "1" ,   "." , "4" , "."]).

sudoku_prueba19(["." , "." , "9" ,   "." , "1" , "." ,   "." , "8" , "." ,
                 "." , "4" , "3" ,   "." , "8" , "." ,   "." , "." , "1" ,
                 "." , "." , "." ,   "." , "." , "3" ,   "9" , "6" , "." ,

                 "." , "." , "." ,   "1" , "." , "7" ,   "." , "." , "." ,
                 "4" , "." , "." ,   "5" , "9" , "." ,   "8" , "." , "." ,
                 "." , "9" , "5" ,   "." , "." , "." ,   "." , "1" , "4" ,

                 "." , "5" , "." ,   "." , "." , "." ,   "7" , "9" , "." ,
                 "." , "." , "." ,   "6" , "." , "." ,   "." , "." , "." ,
                 "." , "." , "8" ,   "." , "." , "." ,   "." , "4" , "."]).

sudoku_prueba20(["4" , "." , "9" ,   "." , "." , "." ,   "." , "." , "." ,
                 "." , "1" , "." ,   "." , "." , "." ,   "5" , "." , "." ,
                 "5" , "6" , "." ,   "9" , "2" , "." ,   "." , "." , "." ,

                 "6" , "7" , "." ,   "3" , "." , "." ,   "." , "1" , "2" ,
                 "." , "5" , "." ,   "." , "1" , "." ,   "4" , "." , "." ,
                 "." , "." , "1" ,   "6" , "4" , "." ,   "." , "." , "9" ,

                 "." , "9" , "." ,   "." , "3" , "." ,   "." , "6" , "." ,
                 "2" , "." , "6" ,   "." , "." , "." ,   "." , "." , "." ,
                 "." , "." , "." ,   "4" , "." , "." ,   "." , "." , "."]).

sudoku_prueba21(["." , "." , "." ,   "." , "." , "6" ,   "." , "." , "7" ,
                 "6" , "." , "." ,   "." , "." , "." ,   "." , "2" , "." ,
                 "1" , "." , "4" ,   "." , "5" , "7" ,   "." , "3" , "." ,

                 "." , "." , "." ,   "." , "." , "9" ,   "8" , "." , "." ,
                 "." , "6" , "7" ,   "." , "3" , "." ,   "." , "4" , "." ,
                 "." , "." , "2" ,   "." , "1" , "." ,   "3" , "." , "." ,

                 "7" , "." , "." ,   "5" , "." , "." ,   "." , "." , "." ,
                 "." , "." , "5" ,   "9" , "." , "." ,   "." , "." , "." ,
                 "." , "8" , "." ,   "." , "2" , "." ,   "4" , "." , "."]).

sudoku_prueba22(["." , "." , "." ,   "." , "7" , "." ,   "." , "." , "9" ,
                 "4" , "6" , "." ,   "1" , "." , "3" ,   "." , "8" , "." ,
                 "3" , "7" , "." ,   "9" , "." , "." ,   "1" , "." , "6" ,

                 "8" , "." , "." ,   "." , "2" , "4" ,   "." , "." , "7" ,
                 "6" , "2" , "." ,   "." , "." , "." ,   "." , "." , "." ,
                 "." , "." , "1" ,   "." , "." , "." ,   "." , "." , "." ,

                 "." , "." , "." ,   "." , "." , "." ,   "." , "." , "." ,
                 "." , "8" , "6" ,   "2" , "." , "." ,   "." , "9" , "." ,
                 "9" , "." , "." ,   "." , "." , "7" ,   "." , "." , "3"]).

sudoku_prueba23(["." , "8" , "3" ,   "." , "." , "7" ,   "." , "." , "." ,
                 "." , "." , "." ,   "." , "." , "4" ,   "." , "." , "." ,
                 "5" , "." , "4" ,   "." , "." , "3" ,   "." , "7" , "6" ,

                 "." , "3" , "5" ,   "." , "." , "9" ,   "." , "." , "." ,
                 "8" , "." , "." ,   "3" , "." , "5" ,   "1" , "." , "." ,
                 "6" , "." , "." ,   "." , "." , "." ,   "." , "4" , "." ,

                 "." , "." , "." ,   "." , "." , "." ,   "9" , "1" , "." ,
                 "1" , "." , "." ,   "." , "." , "." ,   "6" , "." , "4" ,
                 "4" , "." , "." ,   "." , "5" , "." ,   "." , "8" , "."]).

sudoku_prueba24(["." , "." , "5" ,   "." , "." , "." ,   "." , "3" , "2" ,
                 "." , "3" , "2" ,   "7" , "." , "." ,   "9" , "." , "." ,
                 "1" , "4" , "." ,   "." , "." , "." ,   "." , "." , "." ,
                 
                 "." , "." , "." ,   "." , "5" , "." ,   "4" , "." , "." ,
                 "7" , "." , "." ,   "." , "." , "." ,   "." , "6" , "." ,
                 "." , "9" , "3" ,   "4" , "." , "." ,   "2" , "." , "." ,
                 
                 "6" , "." , "." ,   "." , "7" , "2" ,   "." , "." , "." ,
                 "." , "." , "1" ,   "." , "." , "." ,   "." , "9" , "." ,
                 "." , "." , "." ,   "." , "." , "4" ,   "5" , "." , "."]).

sudoku_prueba25(["5" , "." , "." ,   "." , "6" , "." ,   "." , "4" , "." ,
                 "9" , "." , "." ,   "3" , "." , "." ,   "6" , "." , "." ,
                 "." , "." , "2" ,   "." , "." , "9" ,   "." , "." , "." ,
                 
                 "." , "." , "." ,   "8" , "." , "." ,   "3" , "9" , "." ,
                 "." , "." , "5" ,   "." , "." , "." ,   "." , "2" , "." ,
                 "." , "." , "." ,   "." , "3" , "." ,   "5" , "." , "." ,
                 
                 "." , "2" , "8" ,   "." , "." , "." ,   "." , "." , "3" ,
                 "." , "." , "." ,   "." , "." , "." ,   "." , "." , "6" ,
                 "." , "." , "4" ,   "." , "1" , "5" ,   "8" , "." , "9"]).

/*sudoku(L) :- consult('G:/Mi unidad/Universidad/Curso_3_Cuatri_6/CRA/Laboratorio/PL1-CRA/cargaSudokus.pl'), sudoku_prueba1(L).*/

sudoku(L) :- sudoku_prueba1(L).
sudoku(L) :- sudoku_prueba2(L).
sudoku(L) :- sudoku_prueba3(L).
sudoku(L) :- sudoku_prueba4(L).
sudoku(L) :- sudoku_prueba5(L).
sudoku(L) :- sudoku_prueba6(L).
sudoku(L) :- sudoku_prueba7(L).
sudoku(L) :- sudoku_prueba8(L).
sudoku(L) :- sudoku_prueba9(L).
sudoku(L) :- sudoku_prueba10(L).
sudoku(L) :- sudoku_prueba11(L).
sudoku(L) :- sudoku_prueba12(L).
sudoku(L) :- sudoku_prueba13(L).
sudoku(L) :- sudoku_prueba14(L).
sudoku(L) :- sudoku_prueba15(L).
sudoku(L) :- sudoku_prueba16(L).
sudoku(L) :- sudoku_prueba17(L).
sudoku(L) :- sudoku_prueba18(L).
sudoku(L) :- sudoku_prueba19(L).
sudoku(L) :- sudoku_prueba20(L).
sudoku(L) :- sudoku_prueba21(L).
sudoku(L) :- sudoku_prueba22(L).
sudoku(L) :- sudoku_prueba23(L).
sudoku(L) :- sudoku_prueba24(L).
sudoku(L) :- sudoku_prueba25(L).

/** Devuelve (en dos listas) los N primeros elementos de una lista y el resto
    P1 -> Lista original
    P2 -> Lista con los N primeros elementos
    P3 -> Lista con el resto de elementos
    P4 -> Numero de elementos a devolver */
primeros(L, [], L, 0).

primeros([X | R], [X], R, 1).

primeros([X | R], [X | R1], R2, N) :-
    N > 0,
    N1 is N-1,
    primeros(R, R1, R2, N1).

/** Imprime una fila del sudoku */
imprimir_fila([]) :-
    write(" | "), nl.

imprimir_fila([X | R]) :-
    write(" | "),
    write(X),
    imprimir_fila(R).

/** Imprime el sudoku con funciones auxiliares para dar formato */
imprimir_sudoku_aux([], _) :-
    write(" ====================================="), nl, nl, nl.

imprimir_sudoku_aux(L, N) :-
    1 is mod(N,3),
    write(" |===========+===========+===========|"), nl,
    primeros(L, L1, L2, 9),
    imprimir_fila(L1),
    N1 is N + 1,
    imprimir_sudoku_aux(L2, N1).

imprimir_sudoku_aux(L, N) :-
    write(" |-----------|-----------|-----------|"), nl,
    primeros(L, L1, L2, 9),
    imprimir_fila(L1),
    N1 is N + 1,
    imprimir_sudoku_aux(L2, N1).

imprimir_sudoku(L) :-
    write(" ====================================="), nl,
    primeros(L, L1, L2, 9),
    imprimir_fila(L1),
    imprimir_sudoku_aux(L2, 2).

/** Intersección entre dos listas
    P1 -> L1
    P2 -> L2
    P3 -> Lista Resultado */
interseccion([], _, []).

interseccion([X | R], L, S) :-
    member(X, L),
    interseccion(R, L, S1),
    append(S1, [X], S).

interseccion([_ | R], L, S) :-
    interseccion(R, L, S).

/** Dado un número del 1 al 9, devuelve la lista de índices del bloque, fila o columna correspondiente */
contenidoB(INDICE, B) :-
    bloque(_,B),
    member(INDICE, B).

contenidoF(INDICE, F) :-
    fila(_,F),
    member(INDICE, F).

contenidoC(INDICE, C) :-
    columna(_,C),
    member(INDICE, C).

/** Verdadero si la entrada es un número */
numero(N) :-
    numeros(NS),
    member(N, NS).

/** Verdadero si la entrada es una lista */
es_lista([]).
es_lista([_ | _]).

/** Devuelve la lista de números que están en la lista de entrada
    P1 -> Lista de entrada
    P2 -> Lista de índices
    P3 -> Lista de números */
numeros_en_lista(_, [], []).

numeros_en_lista(L, [X | R], NS) :-
    nth1(X, L, N),
    numero(N),
    numeros_en_lista(L, R, N1),
    append(N1, [N], NS).

numeros_en_lista(L, [_ | R], NS) :-
    numeros_en_lista(L, R, NS).

/** Devuelve la lista de números que no están en la lista de entrada
    P1 -> Lista de entrada
    P2 -> Lista de índices
    P3 -> Lista de números */
numeros_not_en_lista(L, LI, N) :-
    numeros_en_lista(L, LI, N1),
    numeros(N2),
    subtract(N2, N1, N).

/** Devuelve la lista de posibles números para una posición
    P1 -> Sudoku de entrada
    P2 -> Índice
    P3 -> Valor del índice
    P4 -> Sudsoku de salida */
get_posibles(L, _, N, N) :-
    sudoku(L),
    numero(N).

get_posibles(L, I, ".", N) :-
    sudoku(L),
    contenidoB(I, B),
    contenidoF(I, F),
    contenidoC(I, C),
    numeros_not_en_lista(L, B, N1),
    numeros_not_en_lista(L, F, N2),
    numeros_not_en_lista(L, C, N3),
    interseccion(N1, N2, N4),
    interseccion(N4, N3, N).

/** Sustituye la lista de salida de get_posibles en la lista de entrada
    P1 -> Sudoku de entrada
    P2 -> Sudoku iterador
    P3 -> Sudoku de salida
    P4 -> Índice */
poner_posibles(_, [], [], _).

poner_posibles(L, ["." | R], LA, I) :-
    get_posibles(L, I, ".", N),
    I1 is I+1,
    poner_posibles(L, R, LA1, I1),
    append([N], LA1, LA).

poner_posibles(L, [NUM | R], LA, I) :-
    numero(NUM),
    I1 is I+1,
    poner_posibles(L, R, LA1, I1),
    append([NUM], LA1, LA).

/** Sustituye el valor de una lista en una posición dada
    P1 -> Lista original
    P2 -> Lista con el valor sustituido
    P3 -> Posición a sustituir
    P4 -> Valor a sustituir */
sustituir(L, LN, I, V) :-
    I2 is I-1,
    primeros(L, PR, [_ | R], I2),
    append(PR, [V | R], LN).

/** Borra un número de una lista de números
    P1 -> Lista original
    P2 -> Lista de índices a iterar
    P3 -> Lista con el número borrado
    P4 -> Valor a borrar */
borrar_num_lista(L, [], L, _).

borrar_num_lista(L, [I | RI], LN, V) :- 
    nth1(I, L, N),
    numero(N),
    borrar_num_lista(L, RI, LN, V).

borrar_num_lista(L, [I | RI], LN, V) :- 
    nth1(I, L, N),
    es_lista(N),
    subtract(N, [V], N1),
    sustituir(L, LN1, I, N1),
    borrar_num_lista(LN1, RI, LN, V).

/** Borra las apariciones de un número en el bloque, fila y columna correspondiente
    P1 -> Sudoku original
    P2 -> Sudoku con el número borrado
    P3 -> Posición a iterar
    P4 -> Valor a borrar */
borrar_coincidentes(L, LN, I, N) :- 
    contenidoB(I, B),
    contenidoF(I, F),
    contenidoC(I, C),
    borrar_num_lista(L, B, L1, N),
    borrar_num_lista(L1, F, L2, N),
    borrar_num_lista(L2, C, LN, N).

/** Regla 0: Si hay un lugar donde solo cabe un número,
    lo escribimos en el lugar correspondiente y lo eliminamos de los
    lugares en los que aparezca de los que son conflictivos
    P1 -> Sudoku de referencia
    P2 -> Sudoku para iterar
    P3 -> Sudoku a devolver
    P4 -> Posición a iterar */
regla0(L, [], L, _).

regla0(L, [[X] | _], LA, I) :-
    borrar_coincidentes(L, LN, I, X),
    I1 is I+1,
    primeros(LN, _, R1, I),
    regla0(LN, R1, LA1, I1),
    sustituir(LA1, LA, I, X).

regla0(L, [_ | R], LA, I) :-
    I1 is I+1,
    regla0(L, R, LA, I1).

/** Devuelve la lista de números que están en la lista de entrada
    P1 -> Lista de valores del bloque, fila o columna a iterar
    P2 -> Lista de repetidos
    P3 -> Lista de únicos (Lista a devolver) */
sacar_listas_regla1([[X | R]], [], [X | R]).

sacar_listas_regla1([X], [X], []).

sacar_listas_regla1([[X | R1] | R], LR, LU) :-
    sacar_listas_regla1(R, LR1, LU1),
    interseccion([X | R1], LU1, LR2),
    union(LR1, LR2, LR),
    subtract(LU1, LR, LU2),
    subtract([X | R1], LR, LU3),
    union(LU2, LU3, LU).

sacar_listas_regla1([X | R], LR, LU) :-
    sacar_listas_regla1(R, LR1, LU),
    append([X], LR1, LR).

/** Devuelve los valores de la lista de entrada que están en la lista de índices
    P1 -> Lista de entrada
    P2 -> Lista de indices
    P3 -> Lista de valores */
get_valores(_, [], []).

get_valores(L, [I | RI], V) :-
    get_valores(L, RI, V1),
    nth1(I, L, N),
    append([N], V1, V).

/*  ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
    ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
    ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
    Si aparece en el primero seguimos iterando ??????????????????????????????????????????????????????????????????????????????????
    ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
    ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
    ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
*/
/** Susituye el valor en la lista de entrada en los índices de la lista de índices
    P1 -> Lista de entrada
    P2 -> Lista de salida
    P3 -> Valor a sustituir
    P4 -> Lista de índices */
sustituir_elemento(L, L, _, []).

sustituir_elemento(L, LA, V, [PI | RI]) :-
    nth1(PI, L, N),
    es_lista(N),
    member(V, N),
    sustituir(L, LA1, PI, V),
    borrar_coincidentes(LA1, LA2, PI, V),
    sustituir_elemento(LA2, LA, V, RI).

sustituir_elemento(L, LA, V, [_ | RI]) :-
    sustituir_elemento(L, LA, V, RI).

/** Itera el sudoku sustituyendo los elementos de la tercera lista en los indices de IDS
    P1 -> Sudoku de entrada
    P2 -> Sudoku a devolver
    P3 -> Lista de listas de valores a sustituir
    P4 -> Lista de índices */
sustituir_si_aparece_regla1(L, L, [], _). 

sustituir_si_aparece_regla1(L, LA, [PLUB | RLUB], IDS) :-
    sustituir_elemento(L, LA1, PLUB, IDS),
    sustituir_si_aparece_regla1(LA1, LA, RLUB, IDS).

/** Regla 1: Si hay un número que aparece en una sola de las listas que aparecen
    en una fila, columna o cuadro, cambiamos la lista por el número y
    borramos el número del resto de listas de la fila, columna o cuadro
    P1 -> Sudoku de referencia
    P2 -> Sudoku a devolver
    P3 -> Iterador de posición */
regla1(L, L, 10).

regla1(L, LA, I) :-
    bloque(I, B),
    columna(I, C),
    fila(I, F),

    get_valores(L, B, VB),
    sacar_listas_regla1(VB, _, LUB),
    sustituir_si_aparece_regla1(L, LA1, LUB, B),
    
    get_valores(LA1, C, VC),
    sacar_listas_regla1(VC, _, LUC),
    sustituir_si_aparece_regla1(LA1, LA2, LUC, C),
    
    get_valores(LA2, F, VF),
    sacar_listas_regla1(VF, _, LUF),
    sustituir_si_aparece_regla1(LA2, LA3, LUF, F),
    
    I1 is I + 1,
    regla1(LA3, LA, I1).

/** Devuelve en CONT el número de elementos de la primera lista que estén en la segunda
    P1 -> Lista de entrada
    P2 -> Lista de entrada
    P3 -> Contador */
member_conj(L, [P | R], CONT) :-
    es_lista(P),
    sort(L, NL),
    sort(P, NP),
    NL = NP,
    member_conj(L, R, CONT1),
    CONT is CONT1 + 1.

member_conj(L, [_ | R], CONT) :-
    member_conj(L, R, CONT).

member_conj(_, _, 0).

/** Devuelve conjuntos de N elementos que aparezcan N veces en la lista de entrada
    P1 -> Lista de entrada
    P2 -> Lista de salida
    P3 -> Número de elementos */
sacar_n_iguales([], [], _).

sacar_n_iguales([X | R], LP, N) :-
    es_lista(X),
    length(X, N),
    member_conj(X, R, CONT),
    CONT is N-1,
    sacar_n_iguales(R, LP1, N),
    append(LP1, [X], LP).

sacar_n_iguales([_ | R], LP, N) :-
    sacar_n_iguales(R, LP, N).

/**
*/
eliminar_elemento(L, L, [], _).

eliminar_elemento(L, LA, [P | R], I) :-
    nth1(I, L, V),
    subtract(V, [P], NV),
    sustituir(L, LA1, I, NV),
    eliminar_elemento(LA1, LA, R, I).

/**
*/
eliminar_elementos_lista(L, L, _, []).

eliminar_elementos_lista(L, LA, P, [PI | RI]) :-
    sort(P, NP),
    nth1(PI, L, V),
    es_lista(V),
    sort(V, NV),
    NP = NV,
    eliminar_elementos_lista(L, LA, P, RI).

eliminar_elementos_lista(L, LA, P, [PI | RI]) :-
    nth1(PI, L, V),
    es_lista(V),
    eliminar_elemento(L, LA1, P, PI),
    eliminar_elementos_lista(LA1, LA, P, RI).

eliminar_elementos_lista(L, LA, P, [_ | RI]) :-
    eliminar_elementos_lista(L, LA, P, RI).

/**
*/
sustituir_si_aparece(L, L, [], _).

sustituir_si_aparece(L, LA, [PLN | RLN], IDS) :-
    eliminar_elementos_lista(L, LA1, PLN, IDS),
    sustituir_si_aparece(LA1, LA, RLN, IDS).

/**
*/
regla_n(L, L, 10, _).

regla_n(L, LA, I, N) :-
    bloque(I, B),
    columna(I, C),
    fila(I, F),

    get_valores(L, B, VB),
    sacar_n_iguales(VB, LPB, N),
    sustituir_si_aparece(L, LA1, LPB, B),

    get_valores(LA1, C, VC),
    sacar_n_iguales(VC, LPC, N),
    sustituir_si_aparece(LA1, LA2, LPC, C),

    get_valores(LA2, F, VF),
    sacar_n_iguales(VF, LPF, N),
    sustituir_si_aparece(LA2, LA3, LPF, F),

    I1 is I + 1,
    regla_n(LA3, LA, I1, N).

/**
*/
sacar_conjuntos_regla_3_b3([], _, []).

sacar_conjuntos_regla_3_b3([PV | RV], CACT, C) :-
    es_lista(PV),
    length(PV, N),
    between(2, 3, N),
    union(CACT, PV, CACT1),
    length(CACT1, 3),
    sacar_conjuntos_regla_3_b3(RV, CACT, C1),
    append(C1, [CACT1], C).

sacar_conjuntos_regla_3_b3([_ | RV], CACT, C) :-
    sacar_conjuntos_regla_3_b3(RV, CACT, C).

/**
*/
sacar_conjuntos_regla_3_b2([], _, []).

sacar_conjuntos_regla_3_b2([PV | RV], CACT, C) :-
    es_lista(PV),
    length(PV, N),
    between(2, 3, N),
    union(CACT, PV, CACT1),
    length(CACT1, LC),
    between(2, 3, LC),
    sacar_conjuntos_regla_3_b3(RV, CACT1, C1),
    sacar_conjuntos_regla_3_b2(RV, CACT, C2),
    append(C1, C2, C).

sacar_conjuntos_regla_3_b2([_ | RV], CACT, C) :-
    sacar_conjuntos_regla_3_b2(RV, CACT, C).

/**
*/
sacar_conjuntos_regla_3_b1([], []).

sacar_conjuntos_regla_3_b1([PV | RV], C) :-
    es_lista(PV),
    length(PV, N),
    between(2, 3, N),
    sacar_conjuntos_regla_3_b2(RV, PV, C1),
    sacar_conjuntos_regla_3_b1(RV, C2),
    append(C1, C2, C).

sacar_conjuntos_regla_3_b1([_ | RV], C) :-
    sacar_conjuntos_regla_3_b1(RV, C).

/**
*/
sustituir_conjunto(L, L, [], _).

sustituir_conjunto(L, LA, [PI | RI], C) :-
    nth1(PI, L, E),
    es_lista(E),
    union(C, E, U),
    sort(U, US),
    sort(C, CS),
    US = CS,
    sustituir_conjunto(L, LA, RI, C).

sustituir_conjunto(L, LA, [PI | RI], C) :-
    nth1(PI, L, E),
    es_lista(E),
    eliminar_elemento(L, LA1, C, PI),
    sustituir_conjunto(LA1, LA, RI, C).

sustituir_conjunto(L, LA, [_ | RI], C) :-
    sustituir_conjunto(L, LA, RI, C).

/**
*/
sustituir_si_aparece_regla3(L, L, _, []).

sustituir_si_aparece_regla3(L, LA, LI, [PC | RC]) :-
    sustituir_conjunto(L, LA1, LI, PC),
    sustituir_si_aparece_regla3(LA1, LA, LI, RC).

/**
*/
regla3(L, L, 10).

regla3(L, LA, I) :-
    bloque(I, B),
    columna(I, C),
    fila(I, F),
    
    get_valores(L, B, VB),
    sacar_conjuntos_regla_3_b1(VB, CB),
    sustituir_si_aparece_regla3(L, LA1, B, CB),
    
    get_valores(L, C, VC),
    sacar_conjuntos_regla_3_b1(VC, CC),
    sustituir_si_aparece_regla3(LA1, LA2, C, CC),

    get_valores(L, F, VF),
    sacar_conjuntos_regla_3_b1(VF, CF),
    sustituir_si_aparece_regla3(LA2, LA3, F, CF),
    
    I1 is I+1,
    regla3(LA3, LA, I1).

/**
*/
sudoku_completo([]).
sudoku_completo([P | R]) :-
    numero(P),
    sudoku_completo(R).

/**
*/
aplicar_reglas(L, L, L).

aplicar_reglas(L, _, L) :-
    sudoku_completo(L).

aplicar_reglas(L, _, LA) :-
    write("Regla0"), nl,
    regla0(L, L, LA1, 1),
    imprimir_sudoku(LA1),

    write("Regla1"), nl,
    regla1(LA1, LA2, 1),
    imprimir_sudoku(LA2),
    
    write("Regla2"), nl,
    regla_n(LA2, LA3, 1, 2), 
    imprimir_sudoku(LA3),

    write("Regla3"), nl,
    regla3(LA3, LA4, 1),
    imprimir_sudoku(LA4),

    /*regla_n(LA4, LA5, 1, 4),
    write("Regla4"), nl,
    imprimir_sudoku(LA5),*/

    aplicar_reglas(LA4, L, LA).

/**
*/
simplificar_sudoku(L, LA) :-
    write("Sudoku inicial"), nl,
    imprimir_sudoku(L),
    poner_posibles(L, L, LA1, 1),

    write("Sudoku con posibles"), nl,
    imprimir_sudoku(LA1),
    aplicar_reglas(LA1, [], LA),

    write("Sudoku simplificado"), nl,
    imprimir_sudoku(LA).