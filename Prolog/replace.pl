replace([], _, _, []).

replace([Head | Tail1],Head,NewElem,[NewElem|Tail2]):-
   replace(Tail1,Head,NewElem,Tail2), !.

replace([Head | Tail1],Ele,NewElem,[Head|Tail2]):-
   replace(Tail1,Ele,NewElem,Tail2).
