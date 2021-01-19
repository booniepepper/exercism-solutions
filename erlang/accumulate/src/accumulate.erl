-module(accumulate).

-export([accumulate/2]).

accumulate(Fn, Xs) ->
    Ys = accumulate(Fn, Xs, []),
    lists:reverse(Ys).

accumulate(_, [], Acc) -> Acc;
accumulate(Fn, [X|Xs], Acc) ->
    accumulate(Fn, Xs, [Fn(X)|Acc]).

