:-encoding(utf8).

% Biblioteca de constantes, principalmente para definir los átomos usados en la aplicación.
% Constantes de las características que vamos a usar.
genero.
formacion.
lirica.
tempo.
voz.
tecnica.

% Predicados dinámicos que añadimos aquí por tenerlo todo unificado


% Listado de subgéneros de Metal con los que trabajaremos
metal.
heavy_metal.
thrash_metal.
black_metal.
unblack_metal.
symphonic_black_metal.
cristian_metal.
death_metal.
technical_death_metal.
melodic_death_metal.
grindcore.
progressive_metal.
folk_metal.
viking_metal.
power_metal.
doom_metal.
nu_metal.
industrial_metal.

% Formaciones de instrumentos habituales en un grupo de metal
formacion_clasica.					% 2 guitarras, bajo y batería
formacion_teclado.					% 2 guitarras, bajo, batería y teclado
formacion_folk.						% clásica con elementos folk (laúdes, flautas, gaitas, etc.)
formacion_orquestal.				% clásica con elementos orquestrales (órganos, baterías de instrumentos de viento, etc.)
formacion_dj.						% clásica soportada con una mesa de mezclas.
formacion_sintetizador.				% clásica soportada con un sintetizador u otros elementos electrónicos
formacion_alternativa.				% otras formaciones no puestas aquí

% Tipos de temática lírica
lirica_metal.						% el metal como forma de vida
lirica_religion.					% promulgación de algún tipo de religión
lirica_anti_religion.				% crítica de la religión
lirica_muerte.						% muerte, de uno mismo o terceros
lirica_horror.						% temáticas que intentan infundir miedo.
lirica_guerra.						% guerras y conflictos del mundo
lirica_historica.					% narran eventos históricos ya acaecidos
lirica_cristianismo.				% promulgan el cristianismo como religión
lirica_fantasia.					% mundos fantásticos y criaturas mágicas
lirica_filosofia.					% exploran dilemas filosóficos
lirica_espiritualidad.				% exploran dilemas espirituales
lirica_folk_y_mitologia.			% canciones folk o leyendas mitológicas
lirica_mitologia_nordica.			% folklore mitológico del panteón de los dioses nórdicos
lirica_muerte_luto_y_desesperacion. % centrado en explorar el dolor causado por estas sensaciones
lirica_sangre_y_visceras.			% recreación en la sangre y vísceras
lirica_sociedad.                    % Crítica de aspectos sociales
lirica_introspeccion.               % introspección o superación personal
lirica_otra.						% otras líricas no mencionadas

% Tempo o velocidad de la canción en 'beats per minute'
tempo_30bpm.						% Esto es extremadamente lento
tempo_60bpm.						% Lento o una balada
tempo_90bpm.						% La mayoría del metal se encuentra aquí
tempo_120bpm.						% Punto inicio thrash metal
tempo_160bpm.						% Media thrash, inicio black/death
tempo_200bpm.						% Black metal
tempo_240bpm.						% Death metal
tempo_superior.						% Grindcore, brutal death y otras cosas sin sentido
tempo_variante.                     % Música con constantes cambios de tempo

% Tipos de voces principales
voz_limpia.                         % Una voz limpia sin moverse demasiado hacia un lado del espectro agudo/grave
voz_aguda.                          % Las características voces del metal más clásico.
voz_grave.                          % Voces graves sin llegar a ser guturales.
voz_gritos_melodicos.               % Dificil técnica de voz que implica gritar manteniendo las notas
voz_gritos.                         % Voz caracterizada por cantar a gritos
voz_gutural.                        % Voz gutural de ultratumba
voz_gutural_limpia.                 % Voz gutural con énfasis en la claridad, por ligeramente más lentas que las guturales
voz_aullidos.                       % Gritos descontrolados y prolongados
voz_death_growl.                    % El 'death growl' es una técnica de canto basada en gritos guturales rápidos y profundos
voz_otros.

% Distintas técnicas que pueden caracterizar a grupos
tecnica_solos_largos.               % Solos, de cualquier instrumento, que suelen ocupar buena parte de las canciones de la banda
tecnica_musica_tecnica.             % Compsosición y ejecución de la melodía de forma muy técnica, buscando sonidos innovadores
tecnica_double_kick_drumming.       % Una técnica de voz asociada a los metales extremos que
tecnica_blast_beat.                 % Técnica para tocar la batería caracterizada por su velocidad y violencia sónica
tecnica_tremolo_riff.               % Técnica para tocar la guitarra donde una misma nota se toca varias veces a altas velocidades
tecnica_fuerte_distorsion.          % Distorsión fuerte de las guitarras y bajos para convertirlas en sonidos muchos más pesados
tecnica_shred_guitar.               % Técnica para tocar la guitarra caracterizada por su velocidad y la complejidad de la técnica requerida para su ejecución
tecnica_tapping.                    % Técnica para tocar la guitarra en la que, en lugar de utilizar las puas para hacer vibrar las cuerdas, se usan las puntas de los dedos para golpearla contra el traste de la guitarra
tecnica_liricas_complejas.          % Letras complejas y elaboradas, dignas de mención por su mensaje
tecnica_canciones_melodicas.        % Canciones con una fuerte tendencia melódica
tecnica_voz_rimas.                  % Musicalidad lírica basada en rimas