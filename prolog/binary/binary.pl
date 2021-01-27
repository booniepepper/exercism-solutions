binary(BinStr, Dec) :- 
    string_chars(BinStr, Chars),
    bin_digits(Chars, Digits),
    reverse(Digits, RevDigits),
    binary_(RevDigits, 1, Dec), !.

bin_digit('0', 0).
bin_digit('1', 1).

bin_digits([], []).
bin_digits(Chars, Digits) :-
    maplist(bin_digit, Chars, Digits).

binary_([], _, 0).
binary_([Dig|Digs], K, Dec) :-
    binary_(Digs, K*2, DecRest),
    Dec is Dig * K  + DecRest.

