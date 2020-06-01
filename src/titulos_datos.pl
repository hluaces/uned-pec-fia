:-encoding(utf8).

% Diccionario de palabras, adjetivos, etc. disponible para la generación de títulos
/*
anyadir_diccionario(Genero, articulo , []).
anyadir_diccionario(Genero, preposicion   , []).

anyadir_diccionario(Genero, sustantivo , []).
anyadir_diccionario(Genero, nombre , []).
anyadir_diccionario(Genero, adjetivo , []).

*/

% Estos serán siempre iguales, por eso los ponemos en "metal"
:-anyadir_diccionario(metal, preposicion, [of]).
:-anyadir_diccionario(metal, articulo   , [the]).
:-anyadir_diccionario(metal, conjuncion , [and]).

% Heavy metal (también los genéricos)
:-anyadir_diccionario(heavy_metal, sustantivo, [
    aero, angel, witch, anvil, armaggedon,
    axe, battle, machine,
    earth, thunder, lightning, metal, grave,
    gun, reaper, heaven, load, tide, claw, lord, maiden,
    priest, lord, king, rider, steel, forge, motor,
    night
]).
:-anyadir_diccionario(heavy_metal, adjetivo, [
    burning, crimson, oud, neverending, noisy, roaring,
    impetuous, red, black, crimson, atomic
]).

% Thrash metal
:-anyadir_diccionario(thrash_metal, sustantivo , [
    reign, dust, crush, annihilator, anthrax,
    destruction, epidemic, bomb, missile,
    sphere, hammer, angel, majesty, death,
    sacrifice, head
]).
:-anyadir_diccionario(thrash_metal, adjetivo , [
    destruction, savage, necro, deadly, nuclear,
    possessed, enraged, gamma
]).

% Black metal
:-anyadir_diccionario(black_metal, sustantivo , [
    angel, demon, blood, raven, satan, christ,
    asmodeus, judas, frost, winter,
    throne, fortress, goat, hell, dammnation,
    heresy
]).
:-anyadir_diccionario(black_metal, adjetivo , [
    unholy, black, dark, demonic, bloody, filthy,
    carpathian, rotted
]).

% Symphonic black metal
:-anyadir_diccionario(symphonic_black_metal, sustantivo , [
    majesty, lord, king, demon, succubi,
    cradle
]).
:-anyadir_diccionario(symphonic_black_metal, adjetivo , [
    unholy, unsacred, daemonic, burning, frozen,
    lusting
]).

% Unblack metal
:-anyadir_diccionario(unblack_metal, sustantivo , [
    angel, christ, church, pope, prayers,
    inquisition, god
]).
:-anyadir_diccionario(unblack_metal, adjetivo , [
    ruthless, brutal, sacred, fiery
]).

% Christian metal
:-anyadir_diccionario(cristian_metal, sustantivo , [
    christ, jesus, god, church, pope
]).
:-anyadir_diccionario(cristian_metal, adjetivo , [
    holy, immortal, faithful, eternal
]).

% Death metal
:-anyadir_diccionario(death_metal, sustantivo , [
    flesh, sorrow, torment, alchemist, corpse,
    doom, enemy, atrocity, autopsy, massacre,
    gut, ghoul, pestilence, knight, suffocation
]).
:-anyadir_diccionario(death_metal, adjetivo , [
    acidic, afflicted, amoral, armoured, destroyer,
    deadly, broken, crushed, rotten, cephalic
]).

% Technical death metal
:-anyadir_diccionario(technical_death_metal, sustantivo , [
    flesh, sorrow, torment, alchemist, corpse,
    doom, enemy, atrocity, autopsy, massacre,
    gut, ghoul, pestilence, knight, suffocation
]).
:-anyadir_diccionario(technical_death_metal, adjetivo , [
    acidic, afflicted, amoral, armoured, destroyer,
    deadly, broken, crushed, rotten, cephalic
]).

% Melodic death metal
:-anyadir_diccionario(melodic_death_metal, sustantivo , [
    flesh, sorrow, torment, alchemist, corpse,
    doom, enemy, atrocity, autopsy, massacre,
    gut, ghoul, pestilence, knight, suffocation
]).
:-anyadir_diccionario(melodic_death_metal, adjetivo , [
    acidic, afflicted, amoral, armoured, destroyer,
    deadly, broken, crushed, rotten, cephalic
]).

% Grindcore (estos van a ser explícitos)
:-anyadir_diccionario(grindcore, sustantivo , [
    pig, fetus, truth, remains, corpse, pain,
    nosebleed, abortion, 'death wound', cunt,
    flesh, god, cacophony
]).
:-anyadir_diccionario(grindcore, adjetivo , [
    aborted, agoraphobic, anal, thrower, driller, cephalic,
    bloody, disembowed, damaged, dying, destroyer,
    regurgitated
]).

% Progressive metal
:-anyadir_diccionario(progressive_metal, sustantivo , [
    forever, animals, sevenfold, baron, baroness,
    illusion, mage, sorrow, moon, rythm, edge
]).
:-anyadir_diccionario(progressive_metal, adjetivo , [
    distorted, dream, iced, galactic, fiery, stolen,
    orphaned
]).


% Folk metal
:-anyadir_diccionario(folk_metal, sustantivo , [
    frost, land, wizard, legend, tale,
    kingdom, hymn
]).
:-anyadir_diccionario(folk_metal, adjetivo , [
    celtic, gallaeic, galician, "köörpi", "kivimetsän",
    chthonic
]).


% Viking metal
:-anyadir_diccionario(viking_metal, sustantivo , [
    battle, legend, warriors, maidens, wisdom, rites
]).
:-anyadir_diccionario(viking_metal, adjetivo , [
    odin, thor, loki, tyr, valhalla, asgard,
        ragnarok
]).

% Power metal
:-anyadir_diccionario(power_metal, sustantivo , [
    dragon, sword, kingdom, sauron, fantasy,
    guardian, watcher, beholder, orc, fire,
    flame, princess, knight
]).
:-anyadir_diccionario(power_metal, adjetivo , [
    blind, burning, black, dark, divine, epic,
    legendary, annointed, forgotten
]).


% Doom metal
:-anyadir_diccionario(doom_metal, sustantivo , [
    funeral, tendencies, fate, bride, maiden,
    catharsis, candle, misery, despair, suicide
]).
:-anyadir_diccionario(doom_metal, adjetivo , [
    suicidal, dying, mournful, terrified, dying,
    silent
]).

% Nu metal
:-anyadir_diccionario(nu_metal, sustantivo , [
    rhymes, rythms, park, moves, stones, fists,
    theory, monkey, town, chamber, cell, pool,
    factory
]).
:-anyadir_diccionario(nu_metal, adjetivo , [
    busting, shouting, raging, edgy, dry, vanilla,
    alien, apex
]).

% Industrial metal
:-anyadir_diccionario(industrial_metal, sustantivo , [
    factory, sun, riot, robot, chain, gear
]).
:-anyadir_diccionario(industrial_metal, adjetivo , [
    automated, noisy, mechanical, alien, exploding,
    electric
]).