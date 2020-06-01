:-encoding(utf8).

% Fichero en el que almacenamos la mayoria de hechos sin variables
% que relacionarán las distintas características con sus distintos
% nombres

% Definiciones de géneros musicales
genero(metal).
genero(heavy_metal).
genero(thrash_metal).
genero(black_metal).
genero(unblack_metal).
genero(symphonic_black_metal).
genero(cristian_metal).
genero(death_metal).
genero(technical_death_metal).
genero(melodic_death_metal).
genero(grindcore).
genero(progressive_metal).
genero(folk_metal).
genero(viking_metal).
genero(power_metal).
genero(doom_metal).
genero(nu_metal).
genero(industrial_metal).

% Formaciones de instrumentos
formacion(formacion_clasica).
formacion(formacion_teclado).
formacion(formacion_folk).
formacion(formacion_orquestal).
formacion(formacion_dj).
formacion(formacion_sintetizador).
formacion(formacion_alternativa).

% Temáticas líricas
lirica(lirica_metal).
lirica(lirica_religion).
lirica(lirica_anti_religion).
lirica(lirica_muerte).
lirica(lirica_horror).
lirica(lirica_guerra).
lirica(lirica_historica).
lirica(lirica_cristianismo).
lirica(lirica_fantasia).
lirica(lirica_filosofia).
lirica(lirica_espiritualidad).
lirica(lirica_folk_y_mitologia).
lirica(lirica_mitologia_nordica).
lirica(lirica_muerte_luto_y_desesperacion).
lirica(lirica_sangre_y_visceras).
lirica(lirica_sociedad).
lirica(lirica_introspeccion).
lirica(lirica_otra).

% Velocidades de interpretación
tempo(tempo_30bpm).
tempo(tempo_60bpm).
tempo(tempo_90bpm).
tempo(tempo_120bpm).
tempo(tempo_160bpm).
tempo(tempo_200bpm).
tempo(tempo_240bpm).
tempo(tempo_superior).
tempo(tempo_variante).

% Tipos de voz
voz(voz_limpia).
voz(voz_aguda).
voz(voz_grave).
voz(voz_gritos_melodicos).
voz(voz_gritos).
voz(voz_gutural).
voz(voz_gutural_limpia).
voz(voz_aullidos).
voz(voz_death_growl).
voz(voz_otros).

% Técnicas de ejecución
tecnica(tecnica_solos_largos).
tecnica(tecnica_musica_tecnica).
tecnica(tecnica_double_kick_drumming).
tecnica(tecnica_blast_beat).
tecnica(tecnica_tremolo_riff).
tecnica(tecnica_fuerte_distorsion).
tecnica(tecnica_shred_guitar).
tecnica(tecnica_tapping).
tecnica(tecnica_liricas_complejas).
tecnica(tecnica_canciones_melodicas).
tecnica(tecnica_voz_rimas).

% Predicado utilizado para determinar si un valor es una
% característica de la banda, entendiendo como característica
% una lírica, formación instrumental, forma de tocar, etc.
caracteristica(X):-
    lirica(X);
    formacion(X);
    tempo(X);
    voz(X);
    tecnica(X).

% Verifica si un conjunto de características se considera válido
% Se considerará válido si:
% - Es un conjunto (sin repetidos)
% - Todos sus elementos son características

% Caso base de recursión. El 1 es porque es el predicado que
% usa recursión. El predicado sin el 1 es el caso inicial
% y hace más comprobaciones
caracteristicas_validas([], 1).

% Función de recursión donde comprobamos que la característica
% que toque sea válida
caracteristicas_validas([H|T], 1):-
    caracteristica(H),
    caracteristicas_validas(T, 1).

% Función inicial, verificamos que la lista sea un conjunto
% e inicializamos la recursión
caracteristicas_validas(Lista):-
    conjunto(Lista),
    caracteristicas_validas(Lista, 1).
