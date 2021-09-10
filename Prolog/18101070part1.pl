is_in(Item,[Item|Rest]).
is_in(Item,[DisregardHead|Tail]):- is_in(Item,Tail).
