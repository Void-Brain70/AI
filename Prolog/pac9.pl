size([],0).
size([_|T],N):-size(T,N),N is S+1.
