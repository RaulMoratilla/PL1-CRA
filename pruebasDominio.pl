/*Sudoku*/

numeros(["1","2","3","4","5","6","7","8","9"]).

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

/* 
    Devuelve (en dos listas) los N primeros elementos de una lista y el resto
    Primera posicion: Lista original
    Segunda posicion: Lista con los N primeros elementos
    Tercera posicion: Lista con el resto de elementos
    Cuarta posicion: Numero de elementos a devolver
*/
primeros(L, [], L, 0).
primeros([X | R], [X], R, 1).
primeros([X | R], [X | R1], R2, N) :- N > 0, N1 is N-1, primeros(R, R1, R2, N1).

imprimir_fila([]) :- write("|"), nl.
imprimir_fila([X | R]) :- write("|"), write(X), imprimir_fila(R).

imprimir_tablero([]) :- write("-------------------"), nl, nl, nl.
imprimir_tablero(L) :- write("-------------------"), nl, primeros(L, L1, L2, 9), imprimir_fila(L1), imprimir_tablero(L2).

/*

    Intersección entre dos listas
    P1 -> L1
    P2 -> L2
    P3 -> Lista Resultado

*/
interseccion([], _, []).
interseccion([X | R], L, S) :- member(X, L), interseccion(R, L, S1), append(S1, [X], S).
interseccion([_ | R], L, S) :- interseccion(R, L, S).

contenidoB(INDICE, B) :- bloque(B), member(INDICE, B).
contenidoF(INDICE, F) :- fila(F), member(INDICE, F).
contenidoC(INDICE, C) :- columna(C), member(INDICE, C).

get(L, INDICE, X) :- INDICE2 is INDICE-1, INDICE2 >= 0, primeros(L, _, [X | _], INDICE2).

numero(N) :- numeros(NS), member(N, NS).
es_lista([]).
es_lista([_ | _]).

numeros_en_lista(_, [], []).
numeros_en_lista(L, [X | R], NS) :- get(L, X, N), numero(N), numeros_en_lista(L, R, N1), append(N1, [N], NS).
numeros_en_lista(L, [_ | R], NS) :- numeros_en_lista(L, R, NS).

numeros_not_en_lista(L, LI, N) :- numeros_en_lista(L, LI, N1), numeros(N2), subtract(N2, N1, N).

get_posibles(L, _, N, N) :- sudoku(L),
                            numero(N).

get_posibles(L, I, ".", N) :- sudoku(L),
                              contenidoB(I, B),
                              contenidoF(I, F),
                              contenidoC(I, C),
                              numeros_not_en_lista(L, B, N1),
                              numeros_not_en_lista(L, F, N2),
                              numeros_not_en_lista(L, C, N3),
                              interseccion(N1, N2, N4),
                              interseccion(N4, N3, N).

poner_posibles(_, [], [], _).

poner_posibles(L, ["." | R], LA, I) :- get_posibles(L, I, ".", N),
                                       I1 is I+1,
                                       poner_posibles(L, R, LA1, I1),
                                       append([N], LA1, LA).

poner_posibles(L, [NUM | R], LA, I) :- numero(NUM),
                                       I1 is I+1,
                                       poner_posibles(L, R, LA1, I1),
                                       append([NUM], LA1, LA).

sustituir(L, LN, I, V) :- I2 is I-1, primeros(L, PR, [_ | R], I2), append(PR, [V | R], LN).

borrar_num_lista(L, [], L, _).

borrar_num_lista(L, [I | RI], LN, V) :- get(L, I, N),
                                        numero(N),
                                        borrar_num_lista(L, RI, LN, V).

borrar_num_lista(L, [I | RI], LN, V) :- get(L, I, N),
                                        es_lista(N),
                                        subtract(N, [V], N1),
                                        sustituir(L, LN1, I, N1),
                                        borrar_num_lista(LN1, RI, LN, V).


borrar_coincidentes(L, LN, I, N) :- contenidoB(I, B),
                                    contenidoF(I, F),
                                    contenidoC(I, C),
                                    borrar_num_lista(L, B, L1, N),
                                    borrar_num_lista(L1, F, L2, N),
                                    borrar_num_lista(L2, C, LN, N).

regla0(L, [], L, _).

regla0(L, [X | R], LA, I) :- numero(X),
                             I1 is I+1,
                             regla0(L, R, LA, I1).

regla0(L, [[X] | _], LA, I) :- borrar_coincidentes(L, LN, I, X),
                               I1 is I+1,
                               primeros(LN, _, R1, I),
                               regla0(LN, R1, LA1, I1),
                               sustituir(LA1, LA, I, X).

regla0(L, [_ | R], LA, I) :- I1 is I+1,
                             regla0(L, R, LA, I1).

/*
    P1 -> Lista de listas
    P2 -> Lista de repetidos
    P3 -> Lista de unicos
*/
sacar_listas_regla1([[X | R]], [], [X | R]).

sacar_listas_regla1([X], [X], []).

sacar_listas_regla1([[X | R1] | R], LR, LU) :- sacar_listas_regla1(R, LR1, LU1),
                                               interseccion([X | R1], LU1, LR2),
                                               union(LR1, LR2, LR),
                                               subtract(LU1, LR, LU2),
                                               subtract([X | R1], LR, LU3),
                                               union(LU2, LU3, LU).

sacar_listas_regla1([X | R], LR, LU) :- sacar_listas_regla1(R, LR1, LU),
                                        append([X], LR1, LR).

get_valores(_, [], []).

get_valores(L, [I | RI], V) :- get_valores(L, RI, V1),
                               get(L, I, N),
                               append([N], V1, V).

sustituir_elemento(L, L, _, []).

/*
    Si aparece en el primero seguimos iterando ¿?
*/
sustituir_elemento(L, LA, V, [PI | RI]) :- get(L, PI, N),
                                           es_lista(N),
                                           member(V, N),
                                           sustituir(L, LA1, PI, V),
                                           borrar_coincidentes(LA1, LA2, PI, V),
                                           sustituir_elemento(LA2, LA, V, RI).

sustituir_elemento(L, LA, V, [_ | RI]) :- sustituir_elemento(L, LA, V, RI).


sustituir_si_aparece_regla1(L, L, [], _). 

sustituir_si_aparece_regla1(L, LA, [PLUB | RLUB], IDS) :- sustituir_elemento(L, LA1, PLUB, IDS),
                                                          sustituir_si_aparece_regla1(LA1, LA, RLUB, IDS).

regla1(L, [], L, _).

/*
    Estamos iterando varias veces cada fila, col, bloque (habria que cambiarlo)
*/
regla1(L, [_ | R], LA, I) :- contenidoB(I, B),
                             contenidoC(I, C),
                             contenidoF(I, F),
                             get_valores(L, B, VB),
                             get_valores(L, C, VC),
                             get_valores(L, F, VF),
                             sacar_listas_regla1(VB, _, LUB),
                             sacar_listas_regla1(VC, _, LUC),
                             sacar_listas_regla1(VF, _, LUF),
                             sustituir_si_aparece_regla1(L, LA1, LUB, B),
                             sustituir_si_aparece_regla1(LA1, LA2, LUC, C),
                             sustituir_si_aparece_regla1(LA2, LA3, LUF, F),
                             I1 is I + 1,
                             regla1(LA3, R, LA, I1).

member_conj(L, [P | R], CONT) :- es_lista(P),
                                 sort(L, NL),
                                 sort(P, NP),
                                 NL = NP,
                                 member_conj(L, R, CONT1),
                                 CONT is CONT1 + 1.

member_conj(L, [_ | R], CONT) :- member_conj(L, R, CONT).

member_conj(_, _, 0).

sacar_parejas_regla2([], []).

sacar_parejas_regla2([[X, Y] | R], LP) :- member_conj([X, Y], R, CONT),
                                                CONT is 1,
                                                sacar_parejas_regla2(R, LP1),
                                                append(LP1, [[X, Y]], LP).

sacar_parejas_regla2([_ | R], LP) :- sacar_parejas_regla2(R, LP).

eliminar_elemento(L, L, [], _).

eliminar_elemento(L, LA, [P | R], I) :- get(L, I, V),
                                        subtract(V, [P], NV),
                                        sustituir(L, LA1, I, NV),
                                        eliminar_elemento(LA1, LA, R, I).

eliminar_elementos_pareja(L, L, _, []).

eliminar_elementos_pareja(L, LA, P, [PI | RI]) :- sort(P, NP),
                                                  get(L, PI, V),
                                                  es_lista(V),
                                                  sort(V, NV),
                                                  NP = NV,
                                                  eliminar_elementos_pareja(L, LA, P, RI).

eliminar_elementos_pareja(L, LA, P, [PI | RI]) :- get(L, PI, V),
                                                  es_lista(V),
                                                  eliminar_elemento(L, LA1, P, PI),
                                                  eliminar_elementos_pareja(LA1, LA, P, RI).

eliminar_elementos_pareja(L, LA, P, [_ | RI]) :- eliminar_elementos_pareja(L, LA, P, RI).

sustituir_si_aparece_regla2(L, L, [], _).

sustituir_si_aparece_regla2(L, LA, [PLP | RLP], IDS) :- eliminar_elementos_pareja(L, LA1, PLP, IDS),
                                                        sustituir_si_aparece_regla2(LA1, LA, RLP, IDS).

regla2(L, [], L, _).

regla2(L, [_ | R], LA, I) :- contenidoB(I, B),
                             contenidoC(I, C),
                             contenidoF(I, F),
                             get_valores(L, B, VB),
                             get_valores(L, C, VC),
                             get_valores(L, F, VF),
                             sacar_parejas_regla2(VB, LPB),
                             sacar_parejas_regla2(VC, LPC),
                             sacar_parejas_regla2(VF, LPF),
                             sustituir_si_aparece_regla2(L, LA1, LPB, B),
                             sustituir_si_aparece_regla2(LA1, LA2, LPC, C),
                             sustituir_si_aparece_regla2(LA2, LA3, LPF, F),
                             I1 is I + 1,
                             regla2(LA3, R, LA, I1).

aplicar_reglas(L, LA) :- regla0(LA1, LA1, LA2, 1),
                         imprimir_tablero(LA2),
                         regla1(LA2, LA2, LA3, 1),
                         regla0(LA3, LA3, LA, 1),
                         imprimir_tablero(LA),
                         aplicar(L, LA).

aplicar(L, LA) :- L = LA.
aplicar(L, LA) :- aplicar_reglas(L, LA).

simplificar_sudoku(L, LA) :- imprimir_tablero(L), 
                             poner_posibles(L, L, LA1, 1), 
                             imprimir_tablero(LA1), 
                             aplicar_reglas(LA1, LA),
                             imprimir_tablero(LA).
                            













/*
simplificar_sudoku(L, _) :- imprimir_tablero(L), 
                            poner_posibles(L, L, LA, 1), 
                            imprimir_tablero(LA), 
                            regla0(LA, LA, LA1, 1),
                            imprimir_tablero(LA1),
                            regla1(LA1, LA1, LA2, 1),
                            regla0(LA2, LA2, LA3, 1),
                            imprimir_tablero(LA3).*/

