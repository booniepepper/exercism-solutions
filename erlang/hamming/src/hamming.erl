-module(hamming).

-export([distance/2]).

diff_count(As, Bs) -> diff_count(As, Bs, 0).
diff_count([], [], N) -> N;
diff_count([A|As], [B|Bs], N) ->
  Inc = case A == B of
          true -> 0;
          false -> 1
        end,
  diff_count(As, Bs, N + Inc).

distance(Left, Right) ->
  case length(Left) =:= length(Right) of
    true -> diff_count(Left, Right);
    false -> {error, "left and right strands must be of equal length"}
  end.

