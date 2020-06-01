:-encoding(utf8).

% Librería de predicados relacionados con los pesos de los
% distintos elementos que engloban el mundo del metal.
%
% En esta base de conocimientos las bandas están compuestas
% de características que las defines. Los pesos permiten relacionar
% los géneros y las características con un valor numérico -el peso-.
%
% Cuanto mayor sea el peso, más afín será esa característica para
% un determinado género.
%
% Esto permite, una vez tenemos una banda, medir las características
% intrínsecas de la misma y conseguir un árbol de pesos donde uno
% de los géneros tendrá mayor puntuación que el resto, definiendo
% así la banda.
%
% Cuanto mayor sea un peso, más influyente es ese elemento
% para definir a una banda. Determinados elementos pueden
% tener un peso negativo, definiendo así restricciones para
% las bandas. P.ej.: "una banda de black metal jamás tendría
% líricas badadas en el cristianismo".
%
% Cabe destacar que en el mundo del metal hay muchos subgéneros que
% son muy similares a sus géneros padres, variando únicamente en
% un par de caracterísicas. En la base de conocimientos esto será
% representado copiando los pesos del género padre y añadiendo las
% diferencias.
%
% Un peso inexistente para un género tendrá un valor de 0,
% (ver predicado pesos(_,_,0) más abajo)

% Los pesos se agrupan tal que peso(Genero,Caracteristica,Valor)
% P.ej.: si asumimos que la lírica basada en mitología nórdica
% debería otorgar un peso de 90 hacia el "viking metal" podríamos
% definirlo conceptualmente como:
% peso(viking_metal, lirica_mitologia_nordica, 90)
:-dynamic(pesos/3).

% Añade un peso a nuestros hechos dinámicos, eliminando
% cualquiera anterior que pudiese existir para ese
% género y característica
anyadir_peso(Genero,Caracteristica,Peso):-
	genero(Genero),
	caracteristica(Caracteristica),
	!,
	(retract(pesos(Genero,Caracteristica,_));true),
	assertz(pesos(Genero,Caracteristica,Peso)).

% Función recursiva para añadir varios elementos con un mismo peso
% a un mismo género. Usado por conveniencia en estos ficheros
% para facilitar la lectura y comprensión del código.
anyadir_pesos(_, []).
anyadir_pesos(Genero, [[Caracteristica,Peso]|T]):-
	anyadir_peso(Genero, Caracteristica, Peso),
	anyadir_pesos(Genero, T).

% Usado para copiar los pesos asociados a un género en otro.
% Esto se usa para crear los subgéneros casi iguales de los
% géneros padres, o para inicializar géneros parecidos.
% En la cabecera del fichero se explica esta aproximación.
copiar_pesos(_, _, []).

copiar_pesos(GeneroDesde, GeneroHasta, [Caracteristica|T]):-
	pesos(GeneroDesde, Caracteristica, Valor),
	anyadir_peso(GeneroHasta, Caracteristica, Valor),
	copiar_pesos(GeneroDesde, GeneroHasta, T).

copiar_pesos(GeneroDesde, GeneroHasta, [_|T]):-
	copiar_pesos(GeneroDesde, GeneroHasta, T).

copiar_pesos(GeneroDesde, GeneroHasta):-
	findall(X, caracteristica(X), Z),
	copiar_pesos(GeneroDesde, GeneroHasta, Z).

% Dado una banda y un género, devuelve el peso total asociado a ese género
dame_peso_genero_banda([], _, A, A).
dame_peso_genero_banda([C|T], Genero, Acc, Total):-
	pesos(Genero, C, Peso),
	Peso \= 0,
	!,
	AccNew is Acc + Peso,
	dame_peso_genero_banda(T, Genero, AccNew, Total)
.
dame_peso_genero_banda([_|T], Genero, Acc, Total):-
	dame_peso_genero_banda(T, Genero, Acc, Total)
.
dame_peso_genero_banda(Banda, Genero, Total):-
	dame_peso_genero_banda(Banda, Genero, 0, Total).

% dame_genero_banda es un predicado que, dado una banda, nos devoverá cual es el
% género al que pertenece, entendiendo como esto, el género cuyo peso sea
% más alto después de calcular todas las diferentes características de la
% banda.
%
% El predicado se basará en recursión y será metamórfico para ofrecer
% al usuario un wrapper que no requiera especificar todos los parámetros
% y permita pregunta en base a una banda

% El primer predicado es el caso base de la recursión
dame_genero_banda(_, [], _, A, A).

% El segundo predicado extrae la cabeza de la lista de géneros y verifica
% el acumulado contra el peso de ese género. Si es superior, guarda el
% nombre del género y continúa iterando.
%
% El corte de este predicado es un "corte rojo" y, sin él, no funcionaría
% correctamente.
dame_genero_banda(Banda, [Genero|T], AccPeso, _, Resultado):-
	dame_peso_genero_banda(Banda, Genero, PesoGenero),
	PesoGenero > AccPeso,
	!,
	dame_genero_banda(Banda, T, PesoGenero, Genero, Resultado).

% Este predicado se da cuando el anterior falla, es decir, cuando
% el peso del género que estamos calculando es inferior al ya
% calculado. La única finalidad de éste es continuar la recursividad.
dame_genero_banda(Banda, [_|T], AccPeso, AccGenero, Resultado):-
	dame_genero_banda(Banda, T, AccPeso, AccGenero, Resultado).

% Este es un predicado/2 que toma como parámetros el nombre de una banda
% ya definida con anterioridad y devuelve el género al que pertenece.
dame_genero_caracteristicas([Caracteristica|T],Genero):-
	findall(X,genero(X),ListaGeneros),
	dame_genero_banda([Caracteristica|T],ListaGeneros,0,0,Genero).

% Este es un predicado/2 que toma como parámetros el nombre de una banda
% ya definida con anterioridad y devuelve el género al que pertenece.
dame_genero_banda(Banda,Genero):-
	findall(X,genero(X),ListaGeneros),
	bandas(Banda,Z),

	dame_genero_banda(Z,ListaGeneros,0,0,Genero).

