:-encoding(utf8).

% En este fichero se definen las propiedades y predicados relacionados con
% las bandas, así como varias bandas constantes basadas en bandas reales
% para que puedan ser usadas para evaluar en la herramienta
%
% Las bandas están compuestas por una lista que engloba las características
% más relevants que contiene. En principio será una característica de cada,
% si bien no sería descabellado que pudiese tener repeticiones (p.ej.: una banda
% que tuviese a la vez vocales guturales graves y agudas).
%
% La base de conocimiento no limita esto, si bien no creará bandas automáticamente
% con repeticiones.

% Varias bandas predefinidas basadas en bandas reales

% heavy metal
:-anyadir_banda(iron_maiden, [
    formacion_clasica, lirica_metal, tempo_120bpm,
    voz_limpia
]).
:-anyadir_banda(judas_priest, [
    formacion_clasica, lirica_sociedad, tempo_90bpm,
    voz_aguda
]).

% thrash
:-anyadir_banda(slayer, [
    formacion_clasica, lirica_sociedad, tempo_160bpm,
    voz_gritos_melodicos, tecnica_fuerte_distorsion
]).
:-anyadir_banda(metallica, [
    formacion_clasica, lirica_sociedad, tempo_160bpm,
    voz_gritos, tecnica_shred_guitar
]).

% black
:-anyadir_banda(satyricon, [
    formacion_clasica, lirica_folk_y_mitologia, tempo_200bpm
]).
:-anyadir_banda(emperor, [
    formacion_teclado, lirica_anti_religion, tempo_240bpm,
    tecnica_tremolo_riff
]).

% symphonic
:-anyadir_banda(dimmu_borgir, [
    formacion_orquestal, lirica_anti_religion, tempo_200bpm, tecnica_canciones_melodicas,
    voz_gutural_limpia
]).

% unblack
:-anyadir_banda(antestor, [
    formacion_clasica, lirica_cristianismo,
    tempo_200bpm, voz_death_growl, tecnica_blast_beat,
    tecnica_double_kick_drumming
]).

%death
:-anyadir_banda(amon_amarth, [
    formacion_clasica, lirica_mitologia_nordica,
    tempo_240bpm, voz_gutural_limpia, tecnica_blast_beat
]).
:-anyadir_banda(dethklok, [
    formacion_clasica, lirica_sangre_y_visceras,
    tempo_240bpm, voz_gutural, tecnica_solos_largos, tecnica_shred_guitar
]).

%technical_death_metal
:-anyadir_banda(gojira, [
    formacion_clasica, lirica_otra,
    tempo_240bpm, voz_gutural_limpia, tecnica_musica_tecnica, tecnica_solos_largos
]).

%power
:-anyadir_banda(rhapsody, [
    lirica_fantasia, formacion_teclado, tempo_200bpm,
    voz_aguda, tecnica_solos_largos
]).
:-anyadir_banda(blind_guardian, [
    lirica_fantasia, formacion_clasica, tempo_160bpm,
    voz_aguda, tecnica_shred_guitar
]).

%cristian_metal
:-anyadir_banda(bloodgod, [
    formacion_clasica, lirica_cristianismo, tempo_60bpm,
    voz_limpia, tecnica_tapping, tecnica_shred_guitar, tecnica_musica_tecnica
]).

%melodic_death_metal
:-anyadir_banda(carcass, [
    formacion_clasica, lirica_sangre_y_visceras,
    tempo_240bpm, voz_gutural_limpia, tecnica_solos_largos, tecnica_canciones_melodicas
]).
:-anyadir_banda(at_the_gates, [
    formacion_clasica, lirica_otra,
    tempo_240bpm, voz_gutural_limpia, tecnica_solos_largos, tecnica_canciones_melodicas
]).

%grindcore
:-anyadir_banda(bolt_thrower, [
    formacion_clasica, lirica_otra,
    tempo_superior, voz_death_growl, tecnica_blast_beat, tecnica_double_kick_drumming
]).
:-anyadir_banda(holocausto_canibal, [
    formacion_clasica, lirica_sangre_y_visceras,
    tempo_superior, tecnica_double_kick_drumming, voz_death_growl
]).

%progressive_metal
:-anyadir_banda(amorphis, [
    formacion_teclado, lirica_folk_y_mitologia,
    tempo_variante, tecnica_shred_guitar, voz_limpia
]).

%folk_metal
:-anyadir_banda(turisas, [
    formacion_folk, lirica_folk_y_mitologia,
    tempo_160bpm, tecnica_canciones_melodicas, voz_gutural_limpia
]).

%viking_metal
:-anyadir_banda(finsterforst, [
    formacion_folk, lirica_mitologia_nordica,
    tempo_160bpm, tecnica_double_kick_drumming
]).

%doom_metal
:-anyadir_banda(katatonia, [
    formacion_clasica, lirica_muerte_luto_y_desesperacion,
    tempo_30bpm, voz_gutural, tecnica_fuerte_distorsion
]).

%nu metal
% N.A: A pesar de lo que dije del nu_metal en otro fichero, a éstos los salvo
:-anyadir_banda(korn, [
    formacion_clasica, lirica_introspeccion,
    tempo_60bpm, voz_gritos, tecnica_fuerte_distorsion, tecnica_voz_rimas

]).

%industrial_metal
:-anyadir_banda(victor_love, [
    formacion_sintetizador, lirica_introspeccion,
    tempo_90bpm, voz_gritos, tecnica_fuerte_distorsion

]).