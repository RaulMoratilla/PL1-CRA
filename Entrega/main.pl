
/** Código realizado por:
    Raúl Moratilla Núñez
    Abel López Martínez */


%%% HECHOS %%%

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

/** Hechos para cargar todos los sudokus de prueba */
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

%%% REGLAS AUXILIARES %%%

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

/** Devuelve una lista con los elementos que pertenecen a ambas
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

/** Sustituye el valor de una lista en una posición dada
    P1 -> Lista original
    P2 -> Lista con el valor sustituido
    P3 -> Posición a sustituir
    P4 -> Valor a sustituir */
sustituir(L, LN, I, V) :-
    I2 is I-1,
    primeros(L, PR, [_ | R], I2),
    append(PR, [V | R], LN).

/** Devuelve los valores de la lista de entrada que están en la lista de índices
    P1 -> Lista de entrada
    P2 -> Lista de indices
    P3 -> Lista de valores */
get_valores(_, [], []).

get_valores(L, [I | RI], V) :-
    get_valores(L, RI, V1),
    nth1(I, L, N),
    append([N], V1, V).

/** Devuelve en CONT el número de elementos de la segunda lista que estén en la primera
    Devuelve true si la segunda lista está contenida en la primera
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

%%% IMPRIMIR %%%

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

%%% PONER POSIBLES NUMEROS %%%

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

%%% REGLA 0 %%%

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

%%% REGLA 1 %%%

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

/** Susituye el valor en la lista de entrada en los índices de la lista de índices
    P1 -> Lista de entrada
    P2 -> Lista de salida
    P3 -> Valor a sustituir
    P4 -> Lista de índices */
sustituir_elemento(L, L, _, []).

sustituir_elemento(L, LA, V, [PI | _]) :-
    nth1(PI, L, N),
    es_lista(N),
    member(V, N),
    sustituir(L, LA1, PI, V),
    borrar_coincidentes(LA1, LA, PI, V).

sustituir_elemento(L, LA, V, [_ | RI]) :-
    sustituir_elemento(L, LA, V, RI).

/** Llama a sustituir_elemento para cada uno de los valores de P3
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

%%% REGLA 2 %%%

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

/** Elimina el elemento P de la posición I de la lista
    P1 -> Lista de entrada
    P2 -> Lista de salida
    P3 -> Elemento a eliminar
    P4 -> Posición en la que eliminar el elemento */
eliminar_elemento(L, L, [], _).

eliminar_elemento(L, LA, [P | R], I) :-
    nth1(I, L, V),
    subtract(V, [P], NV),
    sustituir(L, LA1, I, NV),
    eliminar_elemento(LA1, LA, R, I).

/** Elimina los elementos de las posiciones dadas si son iguales a P
    P1 -> Lista de entrada
    P2 -> Lista de salida
    P3 -> Elemento a eliminar
    P4 -> Lista de posiciones en las que eliminar el elemento */
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

/** Llama a eliminar_elementos_lista para cada uno de los valores de P3
    P1 -> Sudoku de entrada
    P2 -> Sudoku a devolver
    P3 -> Lista de listas de valores a sustituir
    P4 -> Lista de índices */
sustituir_si_aparece(L, L, [], _).

sustituir_si_aparece(L, LA, [PLN | RLN], IDS) :-
    eliminar_elementos_lista(L, LA1, PLN, IDS),
    sustituir_si_aparece(LA1, LA, RLN, IDS).

/** Regla2n: Si N números aparecen solos en N lugares distintos
    de una fila, columna o cuadro, los borramos del resto de lugares
    de la fila, columna o cuadro correspondiente
    P1 -> Sudoku de entrada
    P2 -> Sudoku a devolver
    P3 -> Iterador de fila, columna y bloque
    P4 -> Número de elementos */
regla2n(L, L, 10, _).

regla2n(L, LA, I, N) :-
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
    regla2n(LA3, LA, I1, N).

%%% REGLA 3 %%%

/** Obtiene la lista de conjuntos de N elementos que aparecen en N posiciones de una fila, columna o bloque
    P1 -> Sudoku de entrada
    P2 -> Conjunto actual
    P3 -> Salida de conjuntos
    P4 -> Número de elementos
    P5 -> Iterador de elementos */
sacar_conjuntos_regla3n(_, CACT, [CACT], _, 0).

sacar_conjuntos_regla3n([], _, [], _, _).

sacar_conjuntos_regla3n([PV | RV], CACT, C, N, I) :-
    es_lista(PV),
    length(PV, LONG),
    between(2, N, LONG),
    union(CACT, PV, CACT1),
    length(CACT1, LC),
    between(2, N, LC),
    I1 is I-1,
    sacar_conjuntos_regla3n(RV, CACT1, C1, N, I1),
    sacar_conjuntos_regla3n(RV, CACT, C2, N, I),
    append(C1, C2, C).

sacar_conjuntos_regla3n([_ | RV], CACT, C, N, I) :-
    sacar_conjuntos_regla3n(RV, CACT, C, N, I).

/** Elimina los elementos del conjunto que aparecen en otras posiciones de la lista
    P1 -> Lista de entrada
    P2 -> Lista de salida
    P3 -> Índices en los que eliminar los elementos
    P4 -> Conjunto de elementos a eliminar */
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

/** Llama a sustituir_conjunto para cada uno de los valores de P4
    P1 -> Sudoku de entrada
    P2 -> Sudoku a devolver
    P3 -> Lista de índices
    P4 -> Lista de conjuntos a iterar */
sustituir_si_aparece_regla3n(L, L, _, []).

sustituir_si_aparece_regla3n(L, LA, LI, [PC | RC]) :-
    sustituir_conjunto(L, LA1, LI, PC),
    sustituir_si_aparece_regla3n(LA1, LA, LI, RC).

/** Regla3n: Si en N lugares de una fila, columna o cuadro sólo
    aparecen N números distintos, borramos los números de las
    restantes listas de la fila, columna o cuadro
    P1 -> Sudoku de entrada
    P2 -> Sudoku a devolver
    P3 -> Iterador de fila, columna y bloque
    P4 -> Número de elementos */
regla3n(L, L, 10, _).

regla3n(L, LA, I, N) :-
    bloque(I, B),
    columna(I, C),
    fila(I, F),
    
    get_valores(L, B, VB),
    sacar_conjuntos_regla3n(VB, [], CB, N, N),
    sustituir_si_aparece_regla3n(L, LA1, B, CB),
    
    get_valores(L, C, VC),
    sacar_conjuntos_regla3n(VC, [], CC, N, N),
    sustituir_si_aparece_regla3n(LA1, LA2, C, CC),

    get_valores(L, F, VF),
    sacar_conjuntos_regla3n(VF, [], CF, N, N),
    sustituir_si_aparece_regla3n(LA2, LA3, F, CF),
    
    I1 is I+1,
    regla3n(LA3, LA, I1, N).

%%% RESOLVER SUDOKU %%%

/** Devuelve true si el sudoku está completo
    P1 -> Sudoku */
sudoku_completo([]).
sudoku_completo([P | R]) :-
    numero(P),
    sudoku_completo(R).

/** Aplica las reglas hasta que el sudoku esté completo o no se pueda aplicar ninguna regla
    P1 -> Sudoku de entrada
    P2 -> Sudoku de comparación
    P3 -> Sudoku a devolver */
aplicar_reglas(L, L, L).

aplicar_reglas(L, _, L) :-
    sudoku_completo(L).

aplicar_reglas(L, _, LA) :-

    regla0(L, L, LA1, 1),

    regla1(LA1, LA2, 1),

    regla2n(LA2, LA3, 1, 2),
    regla2n(LA3, LA4, 1, 3),
    regla2n(LA4, LA5, 1, 4),
    regla2n(LA5, LA6, 1, 5),
    regla2n(LA6, LA7, 1, 6),
    regla2n(LA7, LA8, 1, 7),
    regla2n(LA8, LA9, 1, 8),

    regla3n(LA9, LA10, 1, 3),
    regla3n(LA10, LA11, 1, 4),
    regla3n(LA11, LA12, 1, 5),
    regla3n(LA12, LA13, 1, 6),
    regla3n(LA13, LA14, 1, 7),
    regla3n(LA14, LA15, 1, 8),

    aplicar_reglas(LA15, L, LA).

/** Simplifica el sudoku
    P1 -> Sudoku de entrada
    P2 -> Sudoku a devolver */
simplificar_sudoku(L, LA) :-
    write("Sudoku inicial:"), nl, nl,
    imprimir_sudoku(L),
    poner_posibles(L, L, LA1, 1),

    write("Sudoku con posibles:"), nl, nl,
    imprimir_sudoku(LA1),
    aplicar_reglas(LA1, [], LA),

    write("Sudoku simplificado:"), nl, nl,
    imprimir_sudoku(LA).