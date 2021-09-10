bigger(list,integer).
bigger([H|T],Max):-
        H>Max,
        N = H,
        bigger(T,N).
bigger(L,Max):-
        bigger(L,Max).
