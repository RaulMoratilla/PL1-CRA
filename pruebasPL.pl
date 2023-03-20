hola([_|_]).


aplicar_reglas(L, _, LA) :- regla0(L, L, LA1, 1),
                            write("Regla0"), nl,
                            imprimir_tablero(LA1),

                            regla1(LA1, LA1, LA2, 1),
                            write("Regla1"), nl,
                            imprimir_tablero(LA2),

                            regla0(LA2, LA2, LA3, 1),
                            write("Regla0"), nl,
                            imprimir_tablero(LA3),

                            regla_n(LA3, LA3, LA4, 1, 2),
                            write("Regla2"), nl,
                            imprimir_tablero(LA4),

                            regla1(LA4, LA4, LA5, 1),
                            write("Regla1"), nl,
                            imprimir_tablero(LA5),

                            regla0(LA5, LA5, LA6, 1),
                            write("Regla0"), nl,
                            imprimir_tablero(LA6),
                         
                            regla_n(LA6, LA6, LA7, 1, 3),
                            write("Regla3"), nl,
                            imprimir_tablero(LA7),

                            regla_n(LA7, LA7, LA8, 1, 2),
                            write("Regla2"), nl,
                            imprimir_tablero(LA8),

                            regla1(LA8, LA8, LA9, 1),
                            write("Regla1"), nl,
                            imprimir_tablero(LA9),

                            regla0(LA9, LA9, LA10, 1),
                            write("Regla0"), nl,
                            imprimir_tablero(LA10),

                            /*regla_n(LA10, LA10, LA11, 1, 4),
                            write("Regla4"), nl,
                            imprimir_tablero(LA11),

                            regla_n(LA11, LA11, LA12, 1, 3),
                            write("Regla3"), nl,
                            imprimir_tablero(LA12),

                            regla_n(LA12, LA12, LA13, 1, 2),
                            write("Regla2"), nl,
                            imprimir_tablero(LA13),

                            regla1(LA13, LA13, LA14, 1),
                            write("Regla1"), nl,
                            imprimir_tablero(LA14),

                            regla0(LA14, L14, LA15, 1),
                            write("Regla0"), nl,
                            imprimir_tablero(LA15),*/

                            aplicar_reglas(LA10, L, LA).