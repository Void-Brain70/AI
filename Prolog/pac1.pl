male(anil).
male(anik).
male(biswanath).

female(doli).
female(anima).
female(bipasha).

parents(anil,anik).
parents(anil,biswanath).
parents(anil,anima).
parents(anil,bipasha).


parents(doli,anik).
parents(doli,biswanath).
parents(doli,anima).
parents(doli,bipasha).

father(X,Y):- parents(X,Y),male(X).
mother(X,Y):- parents(X,Y),female(X).