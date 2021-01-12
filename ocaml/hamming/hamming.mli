open Base

type nucleotide = A | C | G | T

(** Compute the hamming distance between two [nucleotide] lists. *)
val hamming_distance :
  nucleotide list -> nucleotide list -> (int, string) Result.t

