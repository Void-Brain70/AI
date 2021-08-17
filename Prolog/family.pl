male(sunil).
male(anil).
male(anik).

female(anjoli).
female(doli).

parent(anjoli,anil).
parent(sunil,anil).
parent(doli,anik).
parent(anil,anik).

father(X,Y):-parent(X,Y),male(X).
mother(X,Y):-parent(X,Y),female(X).

grandfather(X,Z):-parents(X,Y),parents(Y,Z),male(X).
grandmother(X,Z):-parents(X,Y),parents(Y,Z),female(Y).