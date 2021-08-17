male(anil).
male(anik).
male(bisawnat).
male(sajal).
male(liton).
male(sharat).
male(seshtro).
male(abir).
male(akash).
male(ovi).
male(ontu).


female(doli).
female(anima).
female(bipasha).
female(borsha).
female(diya).
female(momo).
female(shok).
female(puja).
female(piya).
female(riya).
female(ratri).

spouse(anil,doli).
spouse(sajal,anima).
spouse(bisawnat,momo).
spouse(liton,bipasha).
spouse(sharat,borsha).
spouse(seshtro,shok).
spouse(akash,puja).
spouse(ovi,riya).

parents(anil,sajal).
parents(anil,anik).
parents(anil,bisawnat).
parents(anil,liton).
parents(sajal,sharat).
parents(bisawnat,diya).
parents(bisawnat,abir).
parents(liton,seshtro).
parents(sharat,akash).
parents(seshtro,ovi).
parents(seshtro,priya).
parents(ovi,ontu).
parents(akash,ratri).

parents(doli,anik).
parents(doli,sajal).
parents(doli,bisawnat).
parents(doli,liton).
parents(anima,sharat).
parents(momo,diya).
parents(momo,abir).
parents(bipasha,seshtro).
parents(borsha,akash).
parents(shok,ovi).
parents(shok,priya).
parents(puja,ratri).
parents(riya,ontu).


father(X,Y):-parents(X,Y),male(X).
mother(X,Y):-parents(X,Y),female(X).

sibling(X,Y):-parents(Z,X),parents(Z,Y),X\=Y.

brother(X,Y):-sibling(X,Y),male(X).
sister(X,Y):-sibling(X,Y),female(X).

grandfather(X,Z):-father(X,Y),parents(Y,Z),male(X).
grandmother(X,Z):-mother(X,Y),parents(Y,Z),female(X).

first_cousin(X,Y) :- parents(Z,X), parents(W,Y),X\=Y,Z\=W,sibling(Z,W).

second_cousin(X,Y) :- parents(Z,X),parents(W,Y),X\=Y,Z\=W,first_cousin(Z,W).

third_cousin(X,Y) :- grandfather(Z,X), grandfather(W,Y),X\=Y,Z\=W,first_cousin(Z,W).

first_cousin_once_removed(X,Y):-parents(Z,Y), first_cousin(X,Z), X\=Y.

first_cousin_twice_removed(X,Y):- grandfather(Z,Y), first_cousin(X,Z), X\=Y.



