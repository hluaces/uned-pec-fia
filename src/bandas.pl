:-encoding(utf8).

% En este fichero se definen las propiedades y predicados relacionados
% con las bandas.
%
% Conceptualmente hablando una banda es un asociación entre un nombre
% y un grupo de características del género.
%
% Por ejemplo, la banda Amon Amarth está caracterizada por
% una formación instrumental clásica, acompañada de voces guturales
% limpias, blast beating y una temática lírica que bebe de la mitología
% nórdica.
%
% Este ejemplo anterior se representaría así:
% ?- banda(amon_amarth, [
%    formacion_clasica, lirica_mitologia_nordica,
%    voz_gutural_limpia, tecnica_blast_beat
%]).
%
% El sistema será capaz de generar bandas aleatorias asignándoles
% características válidas. Dichas bandas posteriormente podrán ser
% clasificadas.
%
% Adicionalmente, el sistema ya incluirá varias bandas predefinidas
% existentes en el mundo real (ver datos_bandas.pl).

% Empezamos por definir un predicado dinámico que será utilizado
% para almacenar la lista de bandas de la aplicación.
% Los argumento serán los descritos en la cabecera de
% este fichero: (NOMBRE_BANDA, LISTA_CARACTERISTICAS)
dynamic(bandas/2).

% Determina si una banda con un nombre pasado como parámetro ya existe.
banda(Nombre):- bandas(Nombre,_).

% Añade una banda a la base de conocimientos
anyadir_banda(Nombre, Caracteristicas):-
    banda_valida(Nombre, Caracteristicas),
    assert(bandas(Nombre, Caracteristicas)).

% Predicado que define si una banda es válida.
% Una banda se considera válida si:
% - El nombre no existe
% - Sus características son válidas
banda_valida(Nombre, Lista):-
    \+ banda(Nombre),
    caracteristicas_validas(Lista).

% Genera un conjunto de características aleatorias
generar_caracteristicas(Caracteristicas):-
    % Formación aleatoria
    findall(A, formacion(A), Formaciones),
    elemento_aleatorio(Formaciones, Formacion),

    % Lírica aleatoria
    findall(B, lirica(B), Liricas),
    elemento_aleatorio(Liricas, Lirica),

    % Tempo aleatorio
    findall(C, tempo(C), Tempos),
    elemento_aleatorio(Tempos, Tempo),

    % Voces aleatorias
    findall(D, voz(D), Voces),
    elemento_aleatorio(Voces, Voz),

    % Técnicas aleatorias
    findall(E, tecnica(E), Tecnicas),
    elemento_aleatorio(Tecnicas, Tecnica),

    % Guardamos características
    Caracteristicas = [Formacion,Lirica,Voz,Tecnica,Tempo].


% Dado un nombre de banda que no exista en la base de conocimientos,
% genera un grupo de características aleatorias y se las asocia a la banda
generar_banda(Nombre, Caracteristicas):-
    \+ banda(Nombre),
    generar_caracteristicas(Caracteristicas),
    anyadir_banda(Nombre, Caracteristicas).

% Para tener mensajes de error verbose...
generar_banda(Nombre, _):-
    banda(Nombre),
    writeallnl(["Ya existe una banda con el nombre '", Nombre, "'."]),
    false.

generar_banda(Nombre):-
    generar_banda(Nombre, _),
    writeallnl(["Se ha generado la banda '", Nombre, "'"]).
