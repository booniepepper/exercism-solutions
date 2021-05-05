-module(hamming).

-export([distance/2]).

into_diff({Same, Same}, Count) -> Count;
into_diff(_, Count) -> Count + 1.

distance(Left, Right) ->
  case length(Left) =:= length(Right) of
    true -> lists:foldl(fun into_diff/2, 0, lists:zip(Left, Right));
    false -> {error, "left and right strands must be of equal length"}
  end.

