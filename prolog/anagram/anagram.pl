anagram(Word, Options, Matching) :-
  include(is_anagram(Word), Options, Matching).

is_anagram(WordA, WordB) :-
  string_lower(WordA, LowerA),
  string_lower(WordB, LowerB),
  \+ same(LowerA, LowerB),
  sorted_codes(LowerA, Sorted),
  sorted_codes(LowerB, Sorted).

same(Same, Same).

sorted_codes(Word, Sorted) :-
  string_codes(Word, Codes),
  msort(Codes, Sorted).
