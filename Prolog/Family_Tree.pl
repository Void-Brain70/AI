male(abid).
male(prince).
male(sopon).
male(sakif).

female(riya).
female(suma).
female(ripa).

parents(abid,prince).
parents(abid,riya).
parents(prince,ripa).
parents(prince,sakif).
parents(riya,sopon).
parents(riya,suma).

father(X,Y):-parents(X,Y),male(X).
mother(X,Y):-parents(X,Y),female(X).

sibling(X,Y):-parents(Z,X),parents(Z,Y),X\=Y.

brother(X,Y):-sibling(X,Y),male(X).
sister(X,Y):-sibling(X,Y),female(X).

grandfather(X,Z):-parents(X,Y),parents(Y,Z),male(X).
grandmother(X,Z):-parents(X,Y),parents(Y,Z),female(Y).



