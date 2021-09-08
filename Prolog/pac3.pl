go:-
write('Enter your first number'),nl,
read(X),nl,
write('Enter your second number'),nl,
read(Y),nl,
write('Enter your third number'),nl,
read(Z),nl,

sum(X,Y,Z).
sum(X,Y,Z):-S is (X+Y+Z)/3,

write('Average is'),nl,
write(S).

go:-
write('Enter your first number'),nl,
read(X),nl,
write('Enter your second number'),nl,
read(Y),nl,
write('Enter your third number'),nl,
read(Z),nl,

sum(X,Y,Z).
sum(X,Y,Z):-S is X+Y+Z,

write('Sum  is'),nl,
write(S).