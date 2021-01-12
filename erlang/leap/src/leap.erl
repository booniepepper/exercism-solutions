-module(leap).

-export([leap_year/1]).


leap_year(Year) ->
    divisible(Year, 4)
    andalso not divisible(Year, 100)
    orelse divisible(Year, 400).

divisible(A, B) ->
    (A rem B) =:= 0.

