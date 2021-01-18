-module(accumulate).

-export([accumulate/2]).

accumulate(_, []) -> [];
accumulate(Fn, [X|Xs]) -> [Fn(X) | accumulate(Fn, Xs)].

