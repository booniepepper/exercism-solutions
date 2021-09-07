anagram(Word, Options, Matching) :-
  include(is_anagram(Word), Options, Matching).

is_anagram(WordA, WordB) :-
  string_lower(WordA, LowerA),
  string_lower(WordB, LowerB),
  \+ same(LowerA, LowerB),
  sorted_chars(LowerA, Sorted),
  sorted_chars(LowerB, Sorted).

same(Same, Same).

sorted_chars(Word, Sorted) :-
  string_chars(Word, Chars),
  msort(Chars, Sorted).
