isogram(Word) :-
    string_lower(Word, LowWord),
    string_chars(LowWord, Cs),
    isogram_chars(Cs), !.

isogram_chars([]).
isogram_chars([C|Cs]) :-
    unique_enough_char(C, Cs),
    isogram_chars(Cs).

unique_enough_char(C, Cs) :-
    C = '-';
    C = ' ';
    not(member(C, Cs)).

