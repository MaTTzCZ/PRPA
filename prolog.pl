cislice(0).
cislice(1).
cislice(2).
cislice(3).
cislice(4).
cislice(5).
cislice(6).
cislice(7).
cislice(8).
cislice(9).

zena(romana).
zena(vera).
zena(julie).
zena(iveta).
zena(sylvia).
zena(petra).
zena(anna).
zena(sarka).
zena(michala).
zena(jana).

muz(hektor).
muz(petr).
muz(franta).
muz(tomas).
muz(jiri).
muz(jan).
muz(josef).
muz(karel).

rodice(karel, jana, jan).
rodice(karel, jana, michala).

rodice(jan, sarka, tomas).
rodice(jan, sarka, franta).
rodice(josef, michala, anna).
rodice(josef, michala, iveta).

rodice(franta, sylva, romana).
rodice(tomas, petra, vera).
rodice(petr, iveta, julie).
rodice(jiri, anna, hektor).

% muz(A) -> všechny muže
% zena(A) -> všechny ženy

otec(Otec, Potomek):-
   rodice(Otec, _ , Potomek).

% otec(O, romana).
% otec(karel, P).
% otec(O, P).

matka(Matka, Potomek):-
    rodice(_, Matka, Potomek).

% matka(M, michala).
% matka(jana, P).
% matka(M, P).

% rodic(Rodic, Potomek):-
%   otec(Rodic, Potomek) ; matka (Rodic, Potomek).

rodic(Rodic, Potomek):-
   otec(Rodic, Potomek).
rodic(Rodic, Potomek):-
   matka(Rodic, Potomek).

syn(Rodic, Syn):-
   muz(Syn),
   rodic(Rodic, Syn).

dcera(Rodic, Dcera):-
   zena(Dcera),
   rodic(Rodic, Dcera).

sourozenec(S1, S2):-
    rodice(O, M, S1),
    rodice(O, M, S2),
    S1 \= S2.

predek(Predek, Osoba):-
    rodic(Predek, Osoba).
predek(Predek, Osoba):-
    rodic(Rodic, Osoba),
    predek(Predek, Rodic).

osoba(A):- muz(A); zena(A).

vypisPredky:-
    read(Osoba),
    predek(Predek, Osoba),
    write(Predek),
    nl,
    fail.

vypisPrumer:-
    write("Zadej prvni cislo: "),
    nl,
    read(Cislo1),
    write("Zadej druhe cislo: "),
    nl,
    read(Cislo2),
    Prumer is (Cislo1 + Cislo2) / 2,
    write(Prumer).

%faktorial(N, N!):-
%    faktorial(0, 1),
%    N faktorial(N is N - 1).

cisloTrojuhelniku(1).
cisloTrojuhelniku(2).
cisloTrojuhelniku(3).
cisloTrojuhelniku(4).
cisloTrojuhelniku(5).
cisloTrojuhelniku(6).
trojuhelnik(A, B, C, D, E, F):-
    cisloTrojuhelniku(A),
    cisloTrojuhelniku(B),
    cisloTrojuhelniku(C),
    cisloTrojuhelniku(D),
    cisloTrojuhelniku(E),
    cisloTrojuhelniku(F),

    A \= B,
    A \= C,
    A \= D,
    A \= E,
    A \= F,

    B \= C,
    B \= D,
    B \= E,
    B \= F,

    C \= D,
    C \= E,
    C \= F,

    D \= E,
    D \= F,

    E \= F,

    A + B =:= D + E,
    B + C =:= F + E.
najdi:-
    trojuhelnik(A, B, C, D, E, F),
    write(A:B:C:D:E:F),
    nl,
    fail.
najdi.

%prvni(Prvni, Seznam):-
%    Seznam = [Hlava|Telo],
%    Prvni = Hlava.
%
%prvni(Prvni, Seznam):-
%    Seznam = [Prvni|Telo].
%
%prvni(Prvni, [Prvni|Seznam]).

prvni(Prvni, [Prvni|_]).

druhy(Druhy, [_,Druhy|_]).

posledni(Posledni, [Posledni]).
posledni(Posledni, [_|Telo]):-
    posledni(Posledni, Telo).

predposledni(Predposledni, [Predposledni,_|[]]).
predposledni(Predposledni, [_|Telo]):-
    predposledni(Predposledni, Telo).

prvekVSeznamu(Prvek, [Prvek|_]).
prvekVSeznamu(Prvek, Seznam):-
    Seznam = [_|Seznam],
    prvekVSeznamu(Prvek, Seznam).

vypisSeznam([]).
vypisSeznam([Hlava|Telo]):-
    write(Hlava),
    nl,
    vypisSeznam(Telo).

vypisPozpatku([]).
vypisPozpatku([Hlava|Telo]):-
    vypisPozpatku(Telo),
    write(Hlava),
    nl.

nty([Hlava|_], 1, Hlava).
nty([_|Telo], N, Prvek):-
    N > 1,
    N2 is N - 1,
    nty(Telo, N2, Prvek).

kladna([]).
kladna([Hlava|Telo]):-
    number(Hlava),
    Hlava > 0,
    kladna(Telo).
delka(0, []).
delka(Delka, [_|T]):-
    delka(D2, T),
    Delka is D2 + 1.
soucet(0, []).
soucet(Soucet, [H|T]):-
    soucet(S2, T),
    Soucet is S2 + H.
spoj([], S2, S2).
spoj([H|T], S2, [H|S3]):-
    spoj(T, S2, S3).

smaz(_, [], []).
smaz(P, [P|T], T).
smaz(P, [H|T], [H|S2]):-
    P \= H,
    smaz(P, T, S2).

smaz_vse(_, [], []).
smaz_vse(P, [P|T], S2):-
    smaz_vse(P, T, S2).
smaz_vse(P, [H|T], [H|S2]):-
    P \= H,
    smaz_vse(P, T, S2).

vytkni(P, [P|T], T).
vytkni(P, [H|T], [H|S2]):-
    vytkni(P, T, S2).

otoc(S1,S2):-
    otoc(S1, [], S2).

otoc([], A, A).
otoc([H|T], A, S2):-
    otoc(T,[H|A], S2).

slovo:-
    write("dej mi slovo pico: "),
    nl,
    read(Slovo),
    name(Slovo, Seznam),
    prvni(Znak, Seznam),
    posledni(Znak, Seznam),
    write("No pico, je to stejny debile."),
    nl.

vir:-
    repeat,
    write("Chci susenku!"),
    nl,
    read(susenka),
    !.

smycka:-
    repeat,
    write("Zadej slovo"),
    nl,
    read(Slovo),
    nl,
    write(Slovo),
    nl,
    Slovo = konec, !.

sestupne(N):-
    N > 0,
    assertz(c(N)),
    N2 is N - 1,
    sestupne(N2).

vzestupne(N):-
    N > 0,
    asserta(c(N)),
    N2 is N - 1,
    sestupne(N2).

















