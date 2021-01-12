create((X, Y)) :-
    maplist(between(0, 7), [X, Y]).

attack((X, _), (X, _)) :- !.
attack((_, Y), (_, Y)) :- !.
attack((X1, Y1), (X2, Y2)) :-
    abs(X1 - X2) =:= abs(Y1 - Y2).

