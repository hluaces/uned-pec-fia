:-encoding(utf8).

% Predicados de utilidad que se utilizan a lo largo de toda la herramienta
% y cuya finalidad no está directamente relacionada con la base
% de conocimientos si no con utilidades para interactuar con
% listas arbitrarias, textos en pantallas, etc.

% Escribe y deja un salto de línea a continuación
writenl(X):-write(X),nl.

% Escribe todos los elementos de una lista dejando
% espacios entre ellos
writeall([]).
writeall([H|T]):- write(H),tab(1),writeall(T).

% Igual que writeall, pero además imprime un newline al final
writeallnl([]):- nl.
writeallnl([H|T]):- write(H),tab(1),writeallnl(T).

% Dada una lista, la muestra por pantalla como una lista
% desordenada
lista([]).
lista([H|T]):-
    writeallnl([" - ", H]),
    lista(T).

% Este predicado sirve para reiniciar la base de conocimientos
reiniciar:-
    retractall(pesos(_,_,_)),
    retractall(bandas(_,_)),
    retractall(diccionario(_,_,_)).


% Determina si un elemento existe en una lista
contiene([],_):- false.
contiene([A|_], A).
contiene([_|T], X):-
    contiene(T, X).

% Determina si una lista dada es un conjunto, es decir
% si no hay ningún elemento repetido
conjunto([], _).
conjunto([H|T], Lista):-
    \+ contiene(Lista, H),
    conjunto(T, [H| Lista]).
conjunto(Lista):- conjunto(Lista, []).

% Devuelve la longitud de una lista
len([],0).
len([_|T],N)  :-  len(T,X),  N  is  X+1.

% Devuelve el elemento N-ésimo de una lista
% Recorreremos recursivamente una lista con un acumulador
% que se irá incrementando.

% Caso base de recursión cuando el acumulador es igual a la
% posición Z que queremos encontrar
miembro([H|_], Z, Z, H).

% Caso de recursión, sumamos el acumulador y continuamos la
% recursión
miembro([_|T], Elemento, Acc, Z):-
    Acc2 is Acc + 1,
    miembro(T, Elemento, Acc2, Z).

% Método de utilidad para el usuario que omite el acumulador
% y realiza comprobaciones de longitud para evitar introducirse
% por donde no debe.
miembro(Lista, Elemento, Z):-
    Elemento >= 1,
    len(Lista, X),
    X >= Elemento,
    miembro(Lista, Elemento, 1, Z).

% Devuelve un elemento aleatorio de una lita
elemento_aleatorio(Lista, Z):-
    len(Lista, Longitud),
    Elemento is random(Longitud)+1,
    miembro(Lista, Elemento, Z).

% Concatena todos los elementos de una lista en un único string
% usando un carácter especificado como separador

% Caso base recursión
implode([H|[]], _, Acc, R):-
    string_concat(Acc, H, R).

% Recusión con acumulador
implode([H|T], Caracter, Acc, R):-
    string_concat(H, Caracter, H_Caracter),
    string_concat(Acc, H_Caracter, Final),
    implode(T, Caracter, Final, R).

% Wrapper para no tener que pasar acumulador
implode(Lista, Caracter, Ret):-
    implode(Lista, Caracter, '', Ret).

% Utilidades de desarrollo
recargarmac:- ['/Users/hector/Desktop/Prolog/inicio.pl'].

