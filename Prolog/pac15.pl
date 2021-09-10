enumerate([], Result):-
        Result is 0.
enumerate([H|T], Result) :-
        enumerate(T, R),
        Result is R + 1.
