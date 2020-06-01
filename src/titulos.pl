:-encoding(utf8).

% Este fichero define reglas y predicados para generar títulos de forma
% aleatoria valiéndonos de las capacidades de prolog para generar reglas
% linguísticas.
%
% Los títulos estarán basadas en átomos (verbos, adjetivos, etc.) que dependerán
% del sub género de metal.
%
% Puesto que la escena de este género de musica es mayoritariamente
% anglosajona los títulos se generarán en inglés para otorgar
% mayor credibilidad.

% Definimos varias constantes
titulo.         % Un título completo
sustantivo.     % Un sustantivo
nombre.         % Un nombre propio p.ej.: "Lemmy Killmeister"
adjetivo.       % Adjetivo
articulo.       % Un artículo
preposicion.    % Una preposición
conjuncion.     % Una conjunción

% Predicado dinámico que guardará los diccionarios
% Los argumentos son GeneroMetal, TipoPalabra y palabra
% p.ej.: black_metal, adjetivo, 'Unholy'
:-dynamic(diccionario/3).

% Predicado para añadir varias palabras al diccionario
% Caso base:
anyadir_diccionario(_, _, []).

% Recursión:
anyadir_diccionario(Genero, TipoPalabra, [H|T]):-
    % Añadimos
    anyadir_diccionario(Genero, TipoPalabra, H),

    % Recursión...
    anyadir_diccionario(Genero, TipoPalabra, T).

% Caso individual que añade:
anyadir_diccionario(Genero, TipoPalabra, Texto):-
    genero(Genero),
    palabra(TipoPalabra),
    assert(diccionario(Genero,TipoPalabra,Texto)).


% Determina si algo es considerado una palabra.
% Una palabra es algo de lo siguiente:
% - Un sustantivo
% - Un adjetivo
% - Un delimitador
% La forma más rápida de comprobarlo es sencillamente ver
% si está en el diccionario
palabra(X):-
    contiene([adjetivo,sustantivo,preposicion,conjuncion,articulo,nombre], X).

tipo_palabra(Genero, X, Z):-
    diccionario(Genero, X, Z);
    diccionario(metal, X, Z).

% Genera un nombre de banda aleatorio para un género basándonos
% en los diccionarios relacionados con el mismo

% Reglas para generación de título
% Puesto que hay varias combinaciones separamos los predicados

% Un adjetivo seguido de un sustantivo.
titulo(Genero, T):-
    tipo_palabra(Genero, adjetivo, A),
    tipo_palabra(Genero, sustantivo, S),
    T = [A,S].

% Artículo seguido de sustantivo
titulo(Genero, T):-
    tipo_palabra(Genero, articulo, A),
    tipo_palabra(Genero, sustantivo, S),
    T = [A,S].

% Adjetivo + palabra + sustantivo
%titulo(Genero,T):-
%    tipo_palabra(Genero, adjetivo, A1),
%    tipo_palabra(Genero, articulo, A2),
%    tipo_palabra(Genero, sustantivo, S),
%    T = [A1,A2,S].

% Sustantivo + conjuncion + sustantivo
titulo(Genero,T):-
    tipo_palabra(Genero, sustantivo, S1),
    tipo_palabra(Genero, conjuncion, C),
    tipo_palabra(Genero, sustantivo, S2),
    S1\=S2,
    T = [S1,C,S2].

% Sustantivo + preposicion + sustantivo
titulo(Genero,T):-
    tipo_palabra(Genero, sustantivo, S),
    tipo_palabra(Genero, preposicion, C),
    tipo_palabra(Genero, sustantivo, A),
    S\=A,
    T = [S, C, A].

% Posesivo (nombre's nombre)
titulo(Genero,T):-
    tipo_palabra(Genero, sustantivo , S),
    tipo_palabra(Genero, sustantivo, S2),
    S \= S2,
    string_concat(S, "'s", S1),
    T = [S1, S2].

% Posesivo (nombre's adjetivo nombre)
%titulo(Genero,T):-
%    tipo_palabra(Genero, sustantivo , S),
%    tipo_palabra(Genero, sustantivo, S2),
%    tipo_palabra(Genero, adjetivo, A),
%    S \= S2,
%    string_concat(S, "'s", S1),
%    T = [S1, A, S2].



% Devuelve un título aleatorio generado dinámicamente
% para un género dado, se garantiza que el título no existirá
% en la lista de bandas
generar_nombre(Genero,T):-
    findall(X, titulo(Genero, X), ListaTitulos),
    elemento_aleatorio(ListaTitulos, Z),
    \+ banda(Z),
    implode(Z, ' ', T).

