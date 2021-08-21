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
male(prokash).
male(ontu).
male(sushmoy).
male(sonjoy).
male(rahul).
male(shuvo).


female(doli).
female(anima).
female(bipasha).
female(momo).
female(borsha).
female(diya).
female(shok).
female(puja).
female(piya).
female(riya).
female(ratri).
female(mukta).
female(sathi).
female(nipa).
female(mitu).
female(toma).
female(setu).
female(nondini).


spouse(anil,doli).
spouse(sajal,anima).
spouse(bisawnat,momo).
spouse(liton,bipasha).
spouse(sharat,borsha).
spouse(seshtro,shok).
spouse(akash,puja).
spouse(ovi,riya).
spouse(prokash,sathi).
spouse(ontu,mukta).
spouse(sushmoy,mitu).
spouse(sonjoy,toma).


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
parents(akash,prokash).
parents(akash,ratri).
parents(ovi,ontu).
parents(ovi,nipa).
parents(prokash,sushmoy).
parents(prokash,nondini).
parents(ontu,sonjoy).
parents(ontu,setu).
parents(sushmoy,rahul).
parents(sonjoy,shuvo).

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
parents(puja,prokash).
parents(riya,ontu).
parents(riya,nipa).
parents(sathi,sushmoy).
parents(sathi,nondini).
parents(mukta,sonjoy).
parents(mukta,setu).
parents(mitu,rahul).
parents(toma,shuvo).


wife(X,Y):- female(X),parents(X,Z),parents(Y,Z),X\=Y.

husband(X,Y):- wife(Y,X).

spouses(X,Y):- wife(X,Y);wife(Y,X).

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

second_cousin_once_removed(X,Y):-parents(Z,Y), second_cousin(X,Z), X\=Y.

second_cousin_twice_removed(X,Y):- grandfather(Z,Y), second_cousin(X,Z), X\=Y.

third_cousin_once_removed(X,Y):-parents(Z,Y), third_cousin(X,Z), X\=Y.

third_cousin_twice_removed(X,Y):- grandfather(Z,Y), third_cousin(X,Z), X\=Y.



