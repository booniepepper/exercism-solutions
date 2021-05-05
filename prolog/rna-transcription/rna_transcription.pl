rna_transcription(Rna, Dna) :-
  string_chars(Rna, RnaChars),
  maplist(rna2dna, RnaChars, DnaChars),
  string_chars(Dna, DnaChars).

rna2dna('G', 'C').
rna2dna('C', 'G').
rna2dna('T', 'A').
rna2dna('A', 'U').

