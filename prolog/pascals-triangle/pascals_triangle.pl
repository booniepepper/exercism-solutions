pascal(0, []) :- !.
pascal(1, [[1]]) :- !.
pascal(N, Triangle) :-
  M is N - 1,
  pascal(M, EarlierRows),
  append(_, [PreviousRow], EarlierRows),
  next_row_of(PreviousRow, NextRow),
  append(EarlierRows, [NextRow], Triangle).

next_row_of([N|Ns], [N|Row]) :-
  next_sums_of([N|Ns], Row).

next_sums_of([A,B|Cs], Row) :-
  next_sums_of([B|Cs], Remaining),
  Sum is A+B,
  Row = [Sum|Remaining].
next_sums_of([A], [A]).
