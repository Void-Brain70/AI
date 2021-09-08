go:-
write('Enter your first number'),nl,
read(X),nl,
write('Enter your second number'),nl,
read(Y),nl,

sum(X,Y).
sum(X,Y):-S is X+Y,

write('Sum is'),nl,
write(S).