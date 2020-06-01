:-encoding(utf8).

% Lista de predicados destinados a actuar de "frontend" de la base
% de conocimientos para que un usuario pueda cuestionarla sin
% conocer los detalles de su implementación

% Muestra el mensaje de bienvenida de la aplicación, que explica
% qué se puede hacer con ella
ayuda:-
    writenl(' Base de conocimientos del metal cargada y lista para ser usada.'),
    writenl(' Los siguientes predicados pueden usarse para explorar la base de conocimientos:'),
    nl,

    writenl(' ===== AYUDA ===='),
    writenl(' - glosario                : para una breve explicación del glosario usado en la base de conocimientos.'),
    nl,

    writenl(' ===== CONSULTAS GENERALES ===='),
    writenl(' - mostrar_generos         : para ver los géneros con los que trabaja la herramienta.'),
    writenl(' - mostrar_caracteristicas : para ver las características que pueden tener las bandas.'),
    writenl(' - mostrar_bandas          : para ver que bandas de metal existen en la aplicacion.'),
    nl,

    writenl(' ===== INFORMACIÓN ===='),
    writenl(' - info_banda(X)           : muestra información de la banda pasada como argumento.'),
    writenl(' - pesos_banda(X)          : muestra los pesos de una banda para todos los distintos sub-géneros.'),
    nl,

    writenl(' ===== CREACIÓN / ELIMINACIÓN ===='),
    writenl(' - generar_banda(X)        : crea una banda de características aleatorias y le asigna el nombre X.'),
    writenl(' - generar_banda_aleatoria : crea una banda de título y característiacs aleatorias.'),
    writenl(' - borrar_banda(X)         : elimina la banda de nombre X de la base de conocimientos.'),
    nl,

    writenl(' ===== MISCELÁNEA ===='),
    writenl(' - buscar_bandas(Genero)   : muestra todas las bandas de la base de conocimientos que sean de un género pasado como argumento.'),
    writenl(' - generar_nombre(Genero)  : genera un nombre de banda, aceptando como argumento un subgénero del metal para el que queremos generarla.'),
    writenl(' - ayuda                   : para volver a ver esta pantalla.'),

    nl,writenl(" ~ They can't stop us, let'em try ~"),
    writenl(" ~ For Heavy Metal we will die! ~"),
    nl
.

% Muestra un breve glosario que puede servir para que un usuario que
% no tenga conocimientos de música pueda saber qué significan algunas
% de las palabras usadas en el mundo de la base de conocimientos
glosario:-
    writenl(" - banda         : Entiéndase como 'banda' a un grupo de música que ejecuta una musica basada en el  metal."),
    writenl(" - característica: Los factores diferenciadores de cada banda (p.ej.: potentes voces, riffs escalofriantes o una velocidad endiablada)."),
    writenl(" - sub-género    : El heavy metal se divide en un sinfín de sub-géneros cada uno de los cuales tiene un grupo de características que los identifican. Un subgénero es cada una de esas especialiaciones."),
    writenl(" - peso          : Las características llevan asociadas un valor (o peso) que los relaciona con cada uno de los sub-géneros. Cuanto más alto sea el peso, más significativa es la importancia de esa característica para el género. El género con mayor peso para una banda definirá la pertenencia de ésta al mismo."),
    writenl(" - riff          : Una pequeña composición de guitarra. Una canción está formada de muchos riffs (repetidos o no) seguidos."),
    writenl(" - tempo         : Conceptualmente (aunque con matices) es la velocidad de ejecución de la música. Cuanto más alto el tempo, más rápida la música").

% Muestra todos los géneros y subgéneros
mostrar_generos:-
    writenl("Listado de géneros en la base de conocimientos:"),
    findall(X, genero(X), Z),
    lista(Z).

% Muestra todas las posibles características de las bandas
mostrar_caracteristicas:-
    writenl("Listado de características en la base de coocimientos:"),
    findall(X, caracteristica(X), Z),
    lista(Z).

% Muestra por pantalla todas las bandas creadas
mostrar_bandas:-
    writenl("Listado de bandas en la base de conocimientos:"),
    findall(X, banda(X), Z),
    lista(Z).

% Muestra información de una banda pasada como parámetro
info_banda(Banda):-
    \+ bandas(Banda, _),
    writeallnl(["La banda", Banda, "no existe en la base de conocimientos"]).

info_banda(Banda):-
    writeallnl(["=== Información de la banda '", Banda, "' ==="]),
    writeallnl([" - Nombre: ", Banda]),
    dame_genero_banda(Banda, Genero),
    bandas(Banda, Caracteristicas),
    writeallnl([" - Género: ", Genero]),
    nl,writenl("Lista de características de la banda:"),
    lista(Caracteristicas).

% Genera una banda de nombre y características aleatorias
generar_banda_aleatoria:-
    generar_caracteristicas(Caracteristicas),
    dame_genero_caracteristicas(Caracteristicas,Genero),
    generar_nombre(Genero,Titulo),
    anyadir_banda(Titulo,Caracteristicas),
    writenl("Se ha generado aleatoriamente la siguiente banda:"),
    nl,writeallnl([Titulo, "(", Genero, ")"]),nl,
    writenl("Sus principales características son las siguientes:"),
    lista(Caracteristicas).

% Borra una banda de la base de conocimientos
borrar_banda(Banda):-
    \+ bandas(Banda, _),
    writeallnl(["No existe ninguna banda con el nombre '", Banda, "'"]).

borrar_banda(Banda):-
    retract(bandas(Banda, _));
    writeallnl("Se ha borrado la banda con éxito.").

% Genera un nombre y lo muestra por pantalla
generar_nombre(Genero):-
    \+ genero(Genero),
    writeallnl(["'",Genero,"' no parece ser un sub-género válido."]).

generar_nombre(Genero):-
    generar_nombre(Genero, X),
    writenl(X).



% Muestra por pantalla los pesos para cada género de la banda
% pasada como parámero
pesos_banda(_, _, []).
pesos_banda(Nombre, Caracteristicas, [Genero|T]):-
    dame_peso_genero_banda(Caracteristicas, Genero, X),
    writeallnl([
        ' - ', Nombre, 'tiene un peso de ', X,
        'para el género ', Genero
    ]),
    pesos_banda(Nombre, Caracteristicas, T).

pesos_banda(Banda):-
    \+ banda(Banda),
    writeallnl(["'",Banda,"' no parece ser una Banda existente."]).

pesos_banda(Banda):-
    bandas(Banda,Z),
    findall(X, genero(X), Generos),
    pesos_banda(Banda, Z, Generos).

% Muestra todas las bandas de un género
buscar_bandas(Genero):-
    \+ genero(Genero),
    writeallnl(["'",Genero,"' no parece ser un sub-género válido."]).

buscar_bandas(Genero):-
    findall(X, dame_genero_banda(X, Genero), Z),
    len(Z, Y),
    Y \= 0,
    writeallnl(["Listado de bandas pertenecientes al género ", Genero, "en la base de conocimientos:"]),
    lista(Z).

buscar_bandas(_):-
    writenl("Sin coincidencias").