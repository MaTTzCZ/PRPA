cislo(1).
cislo(2).
cislo(3).
cislo(4).
cislo(5).
cislo(6).
cislo(7).
cislo(8).
cislo(9).
cislo(10).
cislo(11).
cislo(12).
cislo(13).
cislo(14).
cislo(15).
cislo(16).
cislo(17).

soucet(Cislo1, Cislo2, Cislo3):-
    cislo(Cislo1),
    cislo(Cislo2),
    cislo(Cislo3),
    Cislo1 \= Cislo2,
    Cislo2 \= Cislo3,
    Cislo1 \= Cislo3,
    S is Cislo1 + Cislo2 + Cislo3,
    S =:= 20.

prvni([H|_], H).

posledni([H|[]], H).
posledni([_|T], Posledni):-
    posledni(T, Posledni).

ntyPrvek([H|_],1,H).
ntyPrvek([_|T], N, Prvek):-
    N2 is N - 1,
    ntyPrvek(T, N2, Prvek).
tiskSeznamu([]).
tiskSeznamu([H|T]):-
    write(H),
    nl,
    tiskSeznamu(T).
delka([],0).
delka([_|T], Delka):-
    delka(T, Delka2),
    Delka is Delka2 + 1.
clen(X,[X|_]).
clen(X, [_|T]):-
    clen(X, T).
spojSeznamy([],S,S).
spojSeznamy([H|T], S2, [H|R]):-
    spojSeznamy(T, S2, R).

smaz(_,[],[]).
smaz(X, [X|T], T).
smaz(X, [H|T], [H|R]):-
    X \= H,
    smaz(X, T, R).
max([H|T], Max):-
    max(H, T, Max).
max(Max, [], Max).
max(Temp, [H|T], Max):-
    Temp>=H,
    max(Temp, T, Max).
max(Temp, [H|T], Max):-
    Temp<H,
    max(H, T, Max).
vytkni(X, [X|T], T).
vytkni(X, [H|T], [H|R]):-
    vytkni(X, T, R).

gen(0,[]).
gen(N, [N|T]):-
    N1 is N - 1,
    gen(N1, T).
pridejHlavu(Hlava,[H|T], [Hlava,H|T]).

pridejNaKonec(Prvek, [H|[]], [H,Prvek|[]]).
pridejNaKonec(Prvek, [H|T], [H|R]):-
    pridejNaKonec(Prvek, T, R).
smazVse(_,[],[]).
smazVse(X, [X|T], R):-
    smazVse(X, T, R).
smazVse(X, [H|T], [H|R]):-
    X \= H,
    smazVse(X, T, R).
vloz(X,1,[H|T], [X,H|T]).
vloz(X,N,[H|T], [H|R]):-
    N2 is N - 1,
    vloz(X, N2, T, R).



















