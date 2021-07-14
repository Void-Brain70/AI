go:-
write('Enter 1st number'),nl,
read(X),nl,
write('Enter 2nd number'),nl,
read(Y),nl,
write('Enter 3rd number'),nl,
read(Z),nl,

sum(X,Y,Z).
sum(X,Y,Z):- S is (X+Y+Z)/3,

write('Average is'),nl,
write(S).