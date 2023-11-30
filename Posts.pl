person(wolf).
person(naf).
person(nuf).
person(nif).

collect(wolf, fauna).
collect(naf, _).
collect(nuf, _).
collect(nif, _).

position(wolf, _).
position(naf, _).
position(nuf, _).
position(nif, _).

collects(wolf, "fauna").
collects(naf, "space").
right(naf, wolf).
opposite(nif, naf).
dont_collect(nif, "sport").

collects(Who, "space") :- right(nif, Who).
collects(nif, "sport").

left(X, Y) :- position(X, left), position(Y, _).
right(X, Y) :- position(X, right), position(Y, _).

opposite(X, Y) :- left(X, Y), right(Y, _).
opposite(X, Y) :- right(X, Y), left(Y, _).

solve(Wolf, Naf, Nuf, Nif, CollectWolf, CollectNaf, CollectNuf, CollectNif, PositionWolf, PositionNaf, PositionNuf, PositionNif) :-
    person(Wolf), person(Naf), person(Nuf), person(Nif),
    collect(Wolf, CollectWolf), collect(Naf, CollectNaf), collect(Nuf, CollectNuf), collect(Nif, CollectNif),
    position(Wolf, PositionWolf), position(Naf, PositionNaf), position(Nuf, PositionNuf), position(Nif, PositionNif),
    opposite(Wolf, Naf), opposite(Nuf, Nif),
    right(Nif, CollectWolf), right(Nuf, CollectWolf).

?- collects(Who, post), write(Who), write(" "), writeln(post), fail.