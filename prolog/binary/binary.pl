binary(BinStr, Dec) :- 
    string_chars(BinStr, Chars),
    maplist(bin_digit, Chars, Digits),
    reverse(Digits, RevDigits),
    foldl(binary_, RevDigits, [0, 0], [_, Dec]).

bin_digit('0', 0).
bin_digit('1', 1).

binary_(Digit, [K, Acc], [K + 1, Dec]) :-
  Dec is Acc + Digit * 2^K.

