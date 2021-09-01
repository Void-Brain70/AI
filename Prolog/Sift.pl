sift([], [], Amount).
sift([X|T], [X|Result], Amount) :-
        X > Amount,
        sift(T, Result, Amount).
sift([Throwaway|Tail], Result, Amount) :-
        sift(Tail, Result, Amount).