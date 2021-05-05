-module(hamming).

-export([distance/2]).

dist_of(Same, Same) -> 0;
dist_of(_, _) -> 1.

distance(Left, Right) ->
  case length(Left) =:= length(Right) of
    true -> lists:sum(lists:zipwith(fun dist_of/2, Left, Right));
    false -> {error, "left and right strands must be of equal length"}
  end.

