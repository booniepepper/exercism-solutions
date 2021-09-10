% Why does this fail for unicode anagrams? Is it only the runner? It works on my machine...

anagram(Word, Options, Matching) :-
  include(is_anagram(Word), Options, Matching).

is_anagram(WordA, WordB) :-
  insensitive(WordA, InsensitiveA),
  insensitive(WordB, InsensitiveB),
  InsensitiveA \== InsensitiveB,
  sorted_chars(InsensitiveA, Sorted),
  sorted_chars(InsensitiveB, Sorted).

insensitive(Word, Insensitive) :-
  unicode_map(Word, Insensitive, [casefold]).

sorted_chars(Word, Sorted) :-
  atom_chars(Word, Chars),
  msort(Chars, Sorted).

