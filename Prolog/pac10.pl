sumlist([],0).
sumlist([H|T],N):-length(T,S), N is S+H.
