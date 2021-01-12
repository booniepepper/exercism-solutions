triangle(A, B, C, Type) :-
    maplist(<(0), [A, B, C]),
    B + C >= A,
    A + C >= B,
    A + B >= C,
    list_to_set([A, B, C], Sides),
    length(Sides, N),
    unique_sides(N, Type).

unique_sides(1, "equilateral") :- !.
unique_sides(N, "isosceles") :- N < 3.
unique_sides(3, "scalene").

