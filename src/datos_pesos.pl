:-encoding(utf8).

% En este archivo se definen los pesos de los distintos géneros y se mantiene
% separado del resto ya que es información muy amplia que podría dificultar
% las partes lógicas de la aplicación.

% En cada ejecución limpiamos la base de conocimiento existente
:-retractall(pesos(_,_,_)).

% El heavy metal, también conocido como "Metal" a secas, existía
% antes de que el género se dividiese en infinidad de especializaciones
% y subgéneros. Por lo general se caracteriza por sus solos de
% guitarra, riffs de velocidad media-alta, un bajo potente y
% vocales limpias -por lo general agudas- y voces de coros
:-anyadir_pesos(heavy_metal, [
    [formacion_clasica                  ,   8],
    [formacion_teclado                  ,  -5],
    [formacion_folk                     ,  -8],
    [formacion_orquestal                ,  -2],
    [formacion_dj                       , -20],
    [formacion_sintetizador             , -20],
    [formacion_alternativa              ,  -6],

    [lirica_metal                       ,  10],
    [lirica_religion                    ,  -8],
    [lirica_anti_religion               ,  -8],
    [lirica_muerte                      ,   1],
    [lirica_horror                      ,   1],
    [lirica_guerra                      ,   4],
    [lirica_historica                   ,   7],
    [lirica_cristianismo                , -20],
    [lirica_fantasia                    ,   5],
    [lirica_filosofia                   ,   1],
    [lirica_espiritualidad              ,  -4],
    [lirica_folk_y_mitologia            ,  -8],
    [lirica_mitologia_nordica           ,  -8],
    [lirica_muerte_luto_y_desesperacion ,   1],
    [lirica_sangre_y_visceras           ,  -8],
    [lirica_sociedad                    ,   5],
    [lirica_introspeccion               ,   5],

    [tempo_30bpm                        ,  -8],
    [tempo_60bpm                        ,   8],
    [tempo_90bpm                        ,   6],
    [tempo_120bpm                       ,  -4],
    [tempo_160bpm                       ,  -8],
    [tempo_200bpm                       , -10],
    [tempo_240bpm                       , -15],
    [tempo_superior                     , -99],

    [voz_limpia                         ,   8],
    [voz_aguda                           ,  8],
    [voz_grave                          ,   3],
    [voz_gritos_melodicos               ,  -2],
    [voz_gritos                         ,  -2],
    [voz_gutural                        ,  -6],
    [voz_gutural_limpia                 ,  -6],
    [voz_aullidos                       ,  -8],
    [voz_death_growl                    ,  -8],

    [tecnica_solos_largos               ,  10],
    [tecnica_musica_tecnica             ,  -1],
    [tecnica_double_kick_drumming                , -10],
    [tecnica_blast_beat                 , -10],
    [tecnica_tremolo_riff               ,  -8],
    [tecnica_fuerte_distorsion          ,   3],
    [tecnica_shred_guitar               ,   7],
    [tecnica_tapping                    ,   7],
    [tecnica_canciones_melodicas        ,   5],
    [tecnica_voz_rimas                  ,  -8]
]).

% No es un género en sí mismo, pero el metal cristiano
% engloba a cualquier género que transmite mensajes
% cristianos. Téngase en cuenta que en el nacimiento
% del metal (años 70) éste era considerado como
% algo que atentaba contra la religión y se le asociaba
% con el diablo (algunos grupos son así, pero no todos)
% y el metal cristiano fue la respuesta a ese tipo de
% música. Por ello esta caracterización solo tiene en
% cuenta las vocales, ya que no hace referencia
% a un subgénero en concreto y es más bien
% una especie de "fallback"
:-anyadir_pesos(cristian_metal, [
    [lirica_cristianismo                ,  99],
    [lirica_metal                       , -10],
    [lirica_religion                    , -10],
    [lirica_anti_religion               , -99],
    [lirica_muerte                      , -10],
    [lirica_horror                      , -10],
    [lirica_guerra                      , -10],
    [lirica_historica                   , -10],
    [lirica_fantasia                    , -10],
    [lirica_filosofia                   , -10],
    [lirica_espiritualidad              , -10],
    [lirica_folk_y_mitologia            , -10],
    [lirica_mitologia_nordica           , -10],
    [lirica_muerte_luto_y_desesperacion , -10],
    [lirica_sangre_y_visceras           , -10],
    [lirica_sociedad                    , -10],
    [lirica_introspeccion               , -10],
    [lirica_otra                        , -10],
    [tempo_60bpm                        ,   5],
    [tecnica_solos_largos               ,  10],
    [tecnica_fuerte_distorsion          ,   3],
    [tecnica_shred_guitar               ,   7],
    [tecnica_tapping                    ,   7],
    [tecnica_canciones_melodicas        ,   5],
    [tecnica_voz_rimas                  ,  -8]
]).

% Subgénero extremo, también conocido como "speed metal"
% que se caracteriza por voces a gritos, en ocasiones melódicas,
% con una formación tradicional que toca a gran velocidad,
% mejorando la velocidad de los solos del heavy tradicional
% y tocando temas como la sociedad y la crítica al poder
% como abanderados de sus líricas, sin dejar de lado la
% muerte, el horror u otros temas controvertidos
:-anyadir_pesos(thrash_metal, [
    [formacion_clasica                  ,  8],
    [formacion_teclado                  , -10],
    [formacion_folk                     , -10],
    [formacion_orquestal                , -8],
    [formacion_dj                       , -20],
    [formacion_sintetizador             , -20],
    [formacion_alternativa              , -10],

    [lirica_sociedad                    , 10],
    [lirica_religion                    , -8],
    [lirica_anti_religion               , -8],
    [lirica_muerte                      ,  6],
    [lirica_horror                      ,  6],
    [lirica_guerra                      ,  4],
    [lirica_historica                   , -4],
    [lirica_cristianismo                , -10],
    [lirica_fantasia                    , -8],
    [lirica_filosofia                   , -8],
    [lirica_espiritualidad              , -8],
    [lirica_folk_y_mitologia            , -8],
    [lirica_mitologia_nordica           , -10],
    [lirica_muerte_luto_y_desesperacion , -1],
    [lirica_sangre_y_visceras           ,  3],
    [lirica_introspeccion               , -4],

    [tempo_30bpm                        , -15],
    [tempo_60bpm                        , -10],
    [tempo_90bpm                        , -8],
    [tempo_120bpm                       ,  4],
    [tempo_160bpm                       ,  8],
    [tempo_200bpm                       ,  4],
    [tempo_240bpm                       ,  -4],
    [tempo_superior                     ,  -8],

    [voz_limpia                         , -4],
    [voz_aguda                          ,  3],
    [voz_grave                          ,  7],
    [voz_gritos_melodicos               ,  8],
    [voz_gritos                         ,  6],
    [voz_gutural                        , -6],
    [voz_gutural_limpia                 , -6],
    [voz_aullidos                       , -8],
    [voz_death_growl                    , -8],
    [voz_otros                          , -3],

    [tecnica_solos_largos               ,  5],
    [tecnica_musica_tecnica             ,  1],
    [tecnica_double_kick_drumming                , -8],
    [tecnica_blast_beat                 ,  2],
    [tecnica_tremolo_riff               ,  6],
    [tecnica_fuerte_distorsion          ,  6],
    [tecnica_shred_guitar               ,  6],
    [tecnica_tapping                    ,  6],
    [tecnica_canciones_melodicas        ,  1],
    [tecnica_voz_rimas                  ,  -8]
]).

% El black metal es un género muy agresivo que se basa en su agresividad,
% lírica comunmente anti-religiosa, vocales escalofriantes y un
% tremolo-picking muy rápido que define el veloz.
% Suelen tener instrumentos clásicos, innovando en ocasiones con
% elementos orquestrales u teclados.
:-anyadir_pesos(black_metal, [
    [formacion_clasica                  ,  6],
    [formacion_teclado                  ,  4],
    [formacion_folk                     , -6],
    [formacion_orquestal                ,  1],
    [formacion_dj                       , -20],
    [formacion_sintetizador             , -10],
    [formacion_alternativa              , -5],

    [lirica_metal                       , -8],
    [lirica_religion                    , 15],
    [lirica_anti_religion               , 15],
    [lirica_muerte                      ,  6],
    [lirica_horror                      ,  6],
    [lirica_guerra                      ,  4],
    [lirica_historica                   ,  4],
    [lirica_cristianismo                ,-99],
    [lirica_fantasia                    ,  3],
    [lirica_filosofia                   , -5],
    [lirica_espiritualidad              ,  3],
    [lirica_folk_y_mitologia            ,  5],
    [lirica_mitologia_nordica           ,  5],
    [lirica_muerte_luto_y_desesperacion ,  4],
    [lirica_sangre_y_visceras           ,  2],
    [lirica_sociedad                    , -8],
    [lirica_introspeccion               , -4],
    [lirica_otra                        , -4],

    [tempo_30bpm                        , -10],
    [tempo_60bpm                        , -10],
    [tempo_90bpm                        , -6],
    [tempo_120bpm                       , -4],
    [tempo_160bpm                       ,  4],
    [tempo_200bpm                       ,  8],
    [tempo_240bpm                       ,  4],
    [tempo_superior                     , -8],

    [voz_limpia                         , -10],
    [voz_aguda                          , -8],
    [voz_grave                          , -8],
    [voz_gritos_melodicos               ,  6],
    [voz_gritos                         , 10],
    [voz_gutural                        ,  2],
    [voz_gutural_limpia                 ,  2],
    [voz_aullidos                       , 10],
    [voz_death_growl                    , -8],
    [voz_otros                          , -6],

    [tecnica_solos_largos               , -5],
    [tecnica_musica_tecnica             , -3],
    [tecnica_double_kick_drumming       , -6],
    [tecnica_blast_beat                 ,  6],
    [tecnica_tremolo_riff               ,  7],
    [tecnica_fuerte_distorsion          ,  6],
    [tecnica_shred_guitar               , -5],
    [tecnica_tapping                    , -5],
    [tecnica_canciones_melodicas        , -2],
    [tecnica_voz_rimas                  ,  -8]
]).


% El unblack metal es exactamente lo mismo que el black metal con una
% enorme diferencia: en lugar de criticar y atacar la religión, enaltecen
% el cristianismo con líricas que hablande dios, los santos y la mitología
% de diversas sectas de la iglesia católica
:-copiar_pesos(black_metal, unblack_metal).
:-anyadir_pesos(unblack_metal, [
    [lirica_cristianismo ,  99],
    [lirica_anti_religion, -90]
]).


% El black metal sinfónico es una especialización del black metal
% que utiliza elementos orquestrales en sus actuaciones.
% Dichos elementos pueden ser reales (órganos, orquestas) o bien
% sintetizadores a tal efecto. Las voces también pueden ser
% limpias.
:-copiar_pesos(black_metal, symphonic_black_metal).
:-anyadir_pesos(symphonic_black_metal, [
    [formacion_orquestal        , 10],
    [formacion_teclado          ,  8],
    [formacion_sintetizador     ,  4],
    [voz_limpia                 ,  4],
    [tecnica_canciones_melodicas,  5],
    [tempo_160bpm               ,  6],
    [tempo_200bpm               ,  4],
    [tempo_240bpm               ,  -2]
]).


%palm mute tremolo growling screams blast beat
%violencia religion ocultismo naturaleza mitologia
%politica ciencia ficcion actos extremos distorsion
:-anyadir_pesos(death_metal, [
    [formacion_clasica                  ,   6],
    [formacion_teclado                  ,  -4],
    [formacion_folk                     , -10],
    [formacion_orquestal                , -10],
    [formacion_dj                       , -20],
    [formacion_sintetizador             , -10],
    [formacion_alternativa              ,  -8],

    [lirica_metal                       ,  -3],
    [lirica_religion                    ,  -3],
    [lirica_anti_religion               ,   4],
    [lirica_muerte                      ,  10],
    [lirica_horror                      ,   8],
    [lirica_guerra                      ,   8],
    [lirica_historica                   ,  -4],
    [lirica_cristianismo                , -10],
    [lirica_fantasia                    ,  -5],
    [lirica_filosofia                   ,  -5],
    [lirica_espiritualidad              ,  -3],
    [lirica_folk_y_mitologia            ,   4],
    [lirica_mitologia_nordica           ,   4],
    [lirica_muerte_luto_y_desesperacion ,   4],
    [lirica_sangre_y_visceras           ,   4],
    [lirica_sociedad                    ,   4],
    [lirica_introspeccion               ,  -5],
    [lirica_otra                        ,  -5],

    [tempo_30bpm                        , -10],
    [tempo_60bpm                        , -10],
    [tempo_90bpm                        , -10],
    [tempo_120bpm                       , -6],
    [tempo_160bpm                       , -4],
    [tempo_200bpm                       ,  4],
    [tempo_240bpm                       , 10],
    [tempo_superior                     ,  8],

    [voz_limpia                         , -10],
    [voz_aguda                          , -8],
    [voz_grave                          , -4],
    [voz_gritos_melodicos               , -8],
    [voz_gritos                         , -3],
    [voz_gutural                        , 10],
    [voz_gutural_limpia                 , 8],
    [voz_aullidos                       , -3],
    [voz_death_growl                    , 10],
    [voz_otros                          , -6],

    [tecnica_solos_largos               , -5],
    [tecnica_musica_tecnica             ,  2],
    [tecnica_double_kick_drumming                , 10],
    [tecnica_blast_beat                 , 10],
    [tecnica_tremolo_riff               ,  6],
    [tecnica_fuerte_distorsion          ,  6],
    [tecnica_shred_guitar               , -5],
    [tecnica_tapping                    , -5],
    [tecnica_canciones_melodicas        , -5],
    [tecnica_voz_rimas                  ,  -8]
]).

% El death metal técnico junta la brutalidad y velocidad
% del death metal con el afán de mejorar la música a nivel
% técnico encontrado en otros géneros como el metal
% progresivo. Composiciones elaboradas, técnicas de
% guitarra refinadas y letras complejas son fáciles de encontrar
% en este subgénero
:-copiar_pesos(death_metal, technical_death_metal).
:-anyadir_pesos(technical_death_metal, [
    [formacion_alternativa     ,  4],
    [voz_gutural_limpia        , 10],
    [tecnica_solos_largos      ,  4],
    [tecnica_musica_tecnica    , 10],
    [tecnica_liricas_complejas ,  8],
    [tecnica_canciones_melodicas, 2],
    [tempo_200bpm              , 6],
    [tempo_240bpm              , 2]
]).

% Sugénero que toma como base el death metal añadiéndole
% arreglos melódicos con estrillo marcado, presencia de
% teclado y voces más limpios o formaciones de instrumentos
% poco habituales
:-copiar_pesos(death_metal, melodic_death_metal).
:-anyadir_pesos(melodic_death_metal, [
    [formacion_alternativa      ,  7],
    [formacion_teclado          ,  7],
    [voz_gutural_limpia         , 11],
    [tecnica_canciones_melodicas, 14]
]).

% El grindcore es uno de los subgéneros más difíciles de oir,
% incluso entre los amantes del metal, pues su velocidad,
% brutalidad y fuerza de las vocales lo hace un metal
% muy agresivo. Su temática lírica suele hacer referencia
% a actos extremos, sangre o política.
:-anyadir_pesos(grindcore, [
    [formacion_clasica                  ,  6],
    [formacion_teclado                  , -10],
    [formacion_folk                     , -10],
    [formacion_orquestal                , -10],
    [formacion_dj                       , -20],
    [formacion_sintetizador             , -20],
    [formacion_alternativa              , -10],

    [lirica_metal                       , -7],
    [lirica_religion                    , -5],
    [lirica_anti_religion               , -5],
    [lirica_muerte                      ,  5],
    [lirica_horror                      ,  5],
    [lirica_guerra                      , -5],
    [lirica_historica                   , -5],
    [lirica_cristianismo                , -10],
    [lirica_fantasia                    , -7],
    [lirica_filosofia                   , -5],
    [lirica_espiritualidad              , -5],
    [lirica_folk_y_mitologia            , -8],
    [lirica_mitologia_nordica           , -8],
    [lirica_muerte_luto_y_desesperacion , -3],
    [lirica_sangre_y_visceras           , 10],
    [lirica_sociedad                    ,  8],
    [lirica_introspeccion               , -6],
    [lirica_otra                        , -6],

    [tempo_30bpm                        , -10],
    [tempo_60bpm                        , -10],
    [tempo_90bpm                        , -10],
    [tempo_120bpm                       , -10],
    [tempo_160bpm                       , -10],
    [tempo_200bpm                       , -6],
    [tempo_240bpm                       ,  8],
    [tempo_superior                     , 15],
    [tempo_variante                     , -5],

    [voz_limpia                         , -10],
    [voz_aguda                          , -10],
    [voz_grave                          , -10],
    [voz_gritos_melodicos               , -10],
    [voz_gritos                         ,  4],
    [voz_gutural                        , 10],
    [voz_gutural_limpia                 ,  2],
    [voz_aullidos                       ,  4],
    [voz_death_growl                    , 10],
    [voz_otros                          , -10],

    [tecnica_solos_largos               , -7],
    [tecnica_musica_tecnica             , -7],
    [tecnica_double_kick_drumming                , 10],
    [tecnica_blast_beat                 , 10],
    [tecnica_tremolo_riff               , 4],
    [tecnica_fuerte_distorsion          , 10],
    [tecnica_shred_guitar               , -7],
    [tecnica_tapping                    , -7],
    [tecnica_canciones_melodicas        , -10],
    [tecnica_voz_rimas                  ,  -8]
]).

% Subgénero que combina el heavy metal con el
% rock progresivo, buscando sonidos técnicos y
% complejos dentro de la instrumentación
% habitual del heavy metal
:-anyadir_pesos(progressive_metal, [
    [formacion_clasica                  ,  6],
    [formacion_teclado                  ,  6],
    [formacion_folk                     , -5],
    [formacion_orquestal                , -5],
    [formacion_dj                       ,-20],
    [formacion_sintetizador             ,-10],
    [formacion_alternativa              ,-5],

    [lirica_metal                       , -4],
    [lirica_religion                    , -7],
    [lirica_anti_religion               , -8],
    [lirica_muerte                      , -5],
    [lirica_horror                      , -5],
    [lirica_guerra                      , -5],
    [lirica_historica                   , -5],
    [lirica_cristianismo                , -10],
    [lirica_fantasia                    , -5],
    [lirica_filosofia                   ,  8],
    [lirica_espiritualidad              ,  7],
    [lirica_folk_y_mitologia            , -5],
    [lirica_mitologia_nordica           , -8],
    [lirica_muerte_luto_y_desesperacion , -5],
    [lirica_sangre_y_visceras           , -8],
    [lirica_sociedad                    ,  7],
    [lirica_introspeccion               , -8],
    [lirica_otra                        ,  3],

    [tempo_30bpm                        ,  2],
    [tempo_60bpm                        ,  6],
    [tempo_90bpm                        ,  6],
    [tempo_120bpm                       ,  2],
    [tempo_variante                     , 15],
    [tempo_160bpm                       , -5],
    [tempo_200bpm                       , -5],
    [tempo_240bpm                       , -5],
    [tempo_superior                     , -5],

    [voz_limpia                         ,  6],
    [voz_aguda                          ,  6],
    [voz_grave                          ,  6],
    [voz_gritos_melodicos               ,  5],
    [voz_gritos                         ,  5],
    [voz_gutural                        ,  1],
    [voz_gutural_limpia                 ,  1],
    [voz_aullidos                       , -6],
    [voz_death_growl                    , -6],

    [tecnica_solos_largos               ,  7],
    [tecnica_musica_tecnica             , 10],
    [tecnica_double_kick_drumming                , -8],
    [tecnica_blast_beat                 , -8],
    [tecnica_tremolo_riff               ,  5],
    [tecnica_fuerte_distorsion          ,  4],
    [tecnica_shred_guitar               , 10],
    [tecnica_liricas_complejas          ,  8],
    [tecnica_tapping                    ,  5],
    [tecnica_canciones_melodicas        ,  3],
    [tecnica_voz_rimas                  ,  -8]
]).

% El folk metal es un subgénero que se centra en la
% temática y composición de la banda, favoreciendo
% instrumentación folk (flautas, violines, laudes,
% gaitas, etc.) y una temática basada la mitología,
% orígenes e historia de la étnia o nacionalidad
% de la banda. Por ello los grupos folk
% pueden ser melódicos, extremos, rápidos, lentos...
:-anyadir_pesos(folk_metal, [
    [formacion_clasica                  ,  2],
    [formacion_teclado                  ,  6],
    [formacion_folk                     , 15],
    [formacion_orquestal                , -4],
    [formacion_dj                       , -20],
    [formacion_sintetizador             , -10],
    [formacion_alternativa              , -10],

    [lirica_historica                   ,  8],
    [lirica_folk_y_mitologia            , 15],
    [lirica_mitologia_nordica           ,  8],
    [lirica_fantasia                    ,  4],
    [lirica_metal                       , -10],
    [lirica_religion                    , -10],
    [lirica_anti_religion               , -10],
    [lirica_muerte                      , -10],
    [lirica_horror                      , -10],
    [lirica_guerra                      , -10],
    [lirica_cristianismo                , -10],
    [lirica_filosofia                   , -10],
    [lirica_espiritualidad              , -10],
    [lirica_muerte_luto_y_desesperacion , -10],
    [lirica_sangre_y_visceras           , -10],
    [lirica_sociedad                    , -10],
    [lirica_introspeccion               , -10],
    [lirica_otra                        , -10],
    [tecnica_voz_rimas                  ,  -8]
]).

% El doom metal es un género caracterizado por ser lento,
% denso y atmosférico, haciendo hincapié en ello con tempos
% muy lentos y grandes distorsiones. Sus líricas
% suelen hacer referencia a sentimientos negativos
% relacionados con la muerte, la depresión, el suicidio
% o la introspección personal
:-anyadir_pesos(doom_metal, [
    [formacion_clasica                  ,  6],
    [formacion_teclado                  ,  6],
    [formacion_folk                     , -4],
    [formacion_orquestal                , -4],
    [formacion_dj                       , -20],
    [formacion_sintetizador             ,  2],
    [formacion_alternativa              , -10],

    [lirica_metal                       , -7],
    [lirica_religion                    , -7],
    [lirica_anti_religion               , -7],
    [lirica_muerte                      , 10],
    [lirica_horror                      ,  6],
    [lirica_guerra                      , -7],
    [lirica_historica                   , -7],
    [lirica_cristianismo                , -7],
    [lirica_fantasia                    , -7],
    [lirica_filosofia                   , -7],
    [lirica_espiritualidad              , -7],
    [lirica_folk_y_mitologia            , -7],
    [lirica_mitologia_nordica           , -7],
    [lirica_muerte_luto_y_desesperacion , 15],
    [lirica_sangre_y_visceras           , -7],
    [lirica_sociedad                    , -7],
    [lirica_introspeccion               ,  4],
    [lirica_otra                        ,  2],

    [tempo_30bpm                        , 15],
    [tempo_60bpm                        ,  4],
    [tempo_90bpm                        , -7],
    [tempo_120bpm                       , -7],
    [tempo_160bpm                       , -7],
    [tempo_200bpm                       , -7],
    [tempo_240bpm                       , -7],
    [tempo_superior                     , -7],

    [voz_limpia                         ,  6],
    [voz_aguda                          , -5],
    [voz_grave                          , -5],
    [voz_gritos_melodicos               , -5],
    [voz_gritos                         , -5],
    [voz_gutural                        ,  6],
    [voz_gutural_limpia                 ,  6],
    [voz_aullidos                       , -7],
    [voz_death_growl                    , -7],
    [voz_otros                          , -7],

    [tecnica_solos_largos               , -5],
    [tecnica_musica_tecnica             , -5],
    [tecnica_double_kick_drumming                , -5],
    [tecnica_blast_beat                 , -5],
    [tecnica_tremolo_riff               , -5],
    [tecnica_fuerte_distorsion          ,  8],
    [tecnica_shred_guitar               , -5],
    [tecnica_tapping                    , -5],
    [tecnica_voz_rimas                  ,  -8]
]).

% Subgénero del folk metal basado en la mitología nórdica
:-copiar_pesos(folk_metal, viking_metal).
:-anyadir_pesos(viking_metal, [
    [lirica_mitologia_nordica, 20]
]).

% clean, melodic, agudo, melodic lead guitar, fantasia,
% upbeat, fantasia, guerra, meurte
:-anyadir_pesos(power_metal, [
    [formacion_clasica                  ,  6],
    [formacion_teclado                  ,  6],
    [formacion_folk                     ,  1],
    [formacion_orquestal                ,  2],
    [formacion_dj                       , -20],
    [formacion_sintetizador             , -10],
    [formacion_alternativa              , -10],

    [lirica_metal                       , -8],
    [lirica_religion                    , -8],
    [lirica_anti_religion               , -8],
    [lirica_muerte                      , -8],
    [lirica_horror                      , -8],
    [lirica_guerra                      ,  4],
    [lirica_historica                   , -8],
    [lirica_cristianismo                , -10],
    [lirica_fantasia                    ,  10],
    [lirica_filosofia                   , -8],
    [lirica_espiritualidad              , -8],
    [lirica_folk_y_mitologia            ,  -8],
    [lirica_mitologia_nordica           ,  -8],
    [lirica_muerte_luto_y_desesperacion ,  -8],
    [lirica_sangre_y_visceras           ,  -8],
    [lirica_sociedad                    ,  -8],
    [lirica_introspeccion               ,  8],
    [lirica_otra                        ,  -8],

    [tempo_30bpm                        , -5],
    [tempo_60bpm                        , -5],
    [tempo_90bpm                        , -5],
    [tempo_120bpm                       ,  6],
    [tempo_160bpm                       ,  8],
    [tempo_200bpm                       ,  8],
    [tempo_240bpm                       ,  4],
    [tempo_superior                     , -4],

    [voz_limpia                         ,  8],
    [voz_aguda                          ,  8],
    [voz_grave                          , -7],
    [voz_gritos_melodicos               ,  4],
    [voz_gritos                         , -7],
    [voz_gutural                        , -7],
    [voz_gutural_limpia                 , -7],
    [voz_aullidos                       , -7],
    [voz_death_growl                    , -7],
    [voz_otros                          , -7],

    [tecnica_solos_largos               , 10],
    [tecnica_musica_tecnica             ,  4],
    [tecnica_double_kick_drumming                , -8],
    [tecnica_blast_beat                 , -8],
    [tecnica_tremolo_riff               , -8],
    [tecnica_fuerte_distorsion          ,  2],
    [tecnica_shred_guitar               , 10],
    [tecnica_tapping                    , 10],
    [tecnica_canciones_melodicas        ,  6],
    [tecnica_voz_rimas                  ,  -8]
]).

% El nu metal es considerado por muchos, incluído el alumno
% autor de esta herramienta, como algo que no debería
% pertenecer al metal ni tener su apelativo.
% El motivo es que este simplifica la esencia del metal,
% rebajando y reduciendo los clásicos solos de guitarra
% en arás de sustituirlos por otros elementos como
% vocales con rimas (traídas del rap o hip-hop),
% secuenciadores o mesas de DJ.
% - blastbeat +distort -solos -complejidad -ritmo
% +hip-hop +scream +growl +rapping +personal
:-anyadir_pesos(nu_metal, [
    [formacion_clasica                  ,  2],
    [formacion_teclado                  , -7],
    [formacion_folk                     , -7],
    [formacion_orquestal                , -7],
    [formacion_dj                       , 15],
    [formacion_sintetizador             ,  8],
    [formacion_alternativa              , -7],

    [lirica_metal                       ,  -7],
    [lirica_religion                    ,  -7],
    [lirica_anti_religion               ,  -7],
    [lirica_muerte                      ,  -7],
    [lirica_horror                      ,  -7],
    [lirica_guerra                      ,  -7],
    [lirica_historica                   ,  -7],
    [lirica_cristianismo                ,  -7],
    [lirica_fantasia                    ,  -7],
    [lirica_filosofia                   ,  -7],
    [lirica_espiritualidad              ,  -7],
    [lirica_folk_y_mitologia            ,  -7],
    [lirica_mitologia_nordica           ,  -7],
    [lirica_muerte_luto_y_desesperacion ,  -7],
    [lirica_sangre_y_visceras           ,  -7],
    [lirica_sociedad                    ,  4],
    [lirica_introspeccion               ,  8],
    [lirica_otra                        ,  2],

    [voz_limpia                         , -7],
    [voz_aguda                          , -7],
    [voz_grave                          , -7],
    [voz_gritos_melodicos               , -5],
    [voz_gritos                         ,  8],
    [voz_gutural                        ,  8],
    [voz_gutural_limpia                 , -2],
    [voz_aullidos                       , -5],
    [voz_death_growl                    , -1],
    [voz_otros                          ,  8],

    [tecnica_solos_largos               , -10],
    [tecnica_musica_tecnica             , -10],
    [tecnica_double_kick_drumming                , -10],
    [tecnica_blast_beat                 , -10],
    [tecnica_tremolo_riff               , -5],
    [tecnica_fuerte_distorsion          , 10],
    [tecnica_shred_guitar               , -5],
    [tecnica_tapping                    , -5],
    [tecnica_voz_rimas                  , 15]
]).

% Combina el heavy metal y la música industrial,
% que hace fuerte uso de la distorsión, secuenciadores
% y sampling.
:-anyadir_pesos(industrial_metal, [
    [formacion_clasica                  , -7],
    [formacion_teclado                  ,  2],
    [formacion_folk                     , -7],
    [formacion_orquestal                , -7],
    [formacion_dj                       , -4],
    [formacion_sintetizador             , 10],
    [formacion_alternativa              ,  1],

    [lirica_metal                       ,  2],
    [lirica_religion                    ,  4],
    [lirica_anti_religion               ,  4],
    [lirica_muerte                      ,  4],
    [lirica_horror                      , -5],
    [lirica_guerra                      ,  4],
    [lirica_historica                   ,  4],
    [lirica_cristianismo                , -10],
    [lirica_fantasia                    ,  -2],
    [lirica_filosofia                   ,  5],
    [lirica_espiritualidad              ,  1],
    [lirica_folk_y_mitologia            , -7],
    [lirica_mitologia_nordica           , -7],
    [lirica_muerte_luto_y_desesperacion , -2],
    [lirica_sangre_y_visceras           , -5],
    [lirica_sociedad                    ,  8],
    [lirica_introspeccion               ,  7],
    [lirica_otra                        ,  1],

    [tempo_30bpm                        , -4],
    [tempo_60bpm                        ,  5],
    [tempo_90bpm                        ,  8],
    [tempo_120bpm                       ,  6],
    [tempo_160bpm                       , -5],
    [tempo_200bpm                       , -6],
    [tempo_240bpm                       , -7],
    [tempo_superior                     , -8],

    [voz_limpia                         ,  2],
    [voz_aguda                          ,  2],
    [voz_grave                          ,  2],
    [voz_gritos_melodicos               ,  2],
    [voz_gritos                         ,  2],
    [voz_gutural                        ,  2],
    [voz_gutural_limpia                 , -7],
    [voz_aullidos                       , -8],
    [voz_death_growl                    , -8],
    [voz_otros                          ,  2],

    [tecnica_solos_largos               , -5],
    [tecnica_musica_tecnica             ,  1],
    [tecnica_double_kick_drumming                ,  -7],
    [tecnica_blast_beat                 ,  -5],
    [tecnica_tremolo_riff               ,  -5],
    [tecnica_fuerte_distorsion          , 10],
    [tecnica_shred_guitar               ,  -5],
    [tecnica_tapping                    ,  -5],
    [tecnica_voz_rimas                  ,  -8]
]).

% Una característica inexistente siempre tendrá peso 0 y devolverá true.
:-assert(pesos(_,_,0)).

