-module(hamming).

-export([distance/2]).

distance(As, Bs) -> distance(As, Bs, 0).

distance([], [], N) -> N;
distance([Same|As], [Same|Bs], N) -> distance(As, Bs, N);
distance([   _|As], [   _|Bs], N) -> distance(As, Bs, N + 1);
distance(_, _, _) -> {error, "left and right strands must be of equal length"}.

